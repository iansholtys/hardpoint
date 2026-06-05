async function addGenrpgItemExtensionColumns(client) {
  await client.query(`
    ALTER TABLE hardpoint.items
      ADD COLUMN IF NOT EXISTS item_guid uuid REFERENCES genrpg.items(guid) ON DELETE CASCADE
  `);

  await client.query(`
    ALTER TABLE hardpoint.items
      ADD COLUMN IF NOT EXISTS value double precision
  `);

  await client.query(`
    CREATE UNIQUE INDEX IF NOT EXISTS items_item_guid_key
      ON hardpoint.items (item_guid)
      WHERE item_guid IS NOT NULL
  `);
}

async function dropHardpointItemsForeignKey(client, tableName) {
  const result = await client.query(
    `
      SELECT con.conname AS constraint_name
      FROM pg_constraint con
      JOIN pg_class rel ON rel.oid = con.conrelid
      JOIN pg_namespace nsp ON nsp.oid = rel.relnamespace
      WHERE nsp.nspname = 'hardpoint'
        AND rel.relname = $1
        AND con.contype = 'f'
        AND con.confrelid = 'hardpoint.items'::regclass
    `,
    [tableName],
  );

  for (const row of result.rows) {
    await client.query(
      `ALTER TABLE hardpoint."${tableName}" DROP CONSTRAINT "${row.constraint_name}"`,
    );
  }
}

async function itemForeignKeyTargetsGenrpgItems(client, tableName) {
  const result = await client.query(
    `
      SELECT pg_get_constraintdef(con.oid) AS definition
      FROM pg_constraint con
      JOIN pg_class rel ON rel.oid = con.conrelid
      JOIN pg_namespace nsp ON nsp.oid = rel.relnamespace
      WHERE nsp.nspname = 'hardpoint'
        AND rel.relname = $1
        AND con.contype = 'f'
        AND pg_get_constraintdef(con.oid) LIKE '%(item_guid)%'
    `,
    [tableName],
  );

  return result.rows.some((row) => row.definition.includes("genrpg.items"));
}

async function canRepointItemForeignKey(client, tableName) {
  const result = await client.query(
    `
      SELECT 1
      FROM hardpoint."${tableName}" child
      LEFT JOIN genrpg.items gi ON gi.guid = child.item_guid
      WHERE child.item_guid IS NOT NULL
        AND gi.guid IS NULL
      LIMIT 1
    `,
  );

  return !result.rows.length;
}

async function repointItemForeignKeys(client) {
  const foreignKeys = [
    { table: "item_hardpoints", onDelete: "CASCADE" },
    { table: "character_inventory", onDelete: "CASCADE" },
    { table: "vehicle_hardpoints", onDelete: "SET NULL" },
    { table: "character_vehicle_hardpoints", onDelete: "SET NULL" },
  ];

  for (const { table, onDelete } of foreignKeys) {
    const tableResult = await client.query(
      `
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'hardpoint'
          AND table_name = $1
      `,
      [table],
    );
    if (!tableResult.rows.length) {
      continue;
    }

    if (await itemForeignKeyTargetsGenrpgItems(client, table)) {
      continue;
    }

    if (!(await canRepointItemForeignKey(client, table))) {
      console.warn(
        `Skipping hardpoint.${table} item_guid foreign key migration: existing rows do not reference genrpg.items.`,
      );
      continue;
    }

    await dropHardpointItemsForeignKey(client, table);
    await client.query(
      `
        ALTER TABLE hardpoint."${table}"
          ADD CONSTRAINT "${table}_item_guid_fkey"
          FOREIGN KEY (item_guid) REFERENCES genrpg.items(guid) ON DELETE ${onDelete}
      `,
    );
  }
}

async function reshapeHardpointItemsForGenrpgExtension(client) {
  const tableResult = await client.query(
    `
      SELECT 1
      FROM information_schema.tables
      WHERE table_schema = 'hardpoint'
        AND table_name = 'items'
    `,
  );
  if (!tableResult.rows.length) {
    return;
  }

  const legacyNameResult = await client.query(
    `
      SELECT 1
      FROM information_schema.columns
      WHERE table_schema = 'hardpoint'
        AND table_name = 'items'
        AND column_name = 'name'
    `,
  );
  if (legacyNameResult.rows.length) {
    await client.query(`ALTER TABLE hardpoint.items ALTER COLUMN name DROP NOT NULL`);
    await client.query(`ALTER TABLE hardpoint.items DROP COLUMN name`);
  }

  await client.query(`ALTER TABLE hardpoint.items DROP COLUMN IF EXISTS description`);

  await repointItemForeignKeys(client);

  await client.query(`DELETE FROM hardpoint.items WHERE item_guid IS NULL`);

  const legacyGuidResult = await client.query(
    `
      SELECT 1
      FROM information_schema.columns
      WHERE table_schema = 'hardpoint'
        AND table_name = 'items'
        AND column_name = 'guid'
    `,
  );
  if (!legacyGuidResult.rows.length) {
    return;
  }

  await client.query(`DROP INDEX IF EXISTS hardpoint.items_item_guid_key`);
  await client.query(`ALTER TABLE hardpoint.items DROP CONSTRAINT IF EXISTS items_pkey`);
  await client.query(`ALTER TABLE hardpoint.items DROP COLUMN guid`);
  await client.query(`ALTER TABLE hardpoint.items ALTER COLUMN item_guid SET NOT NULL`);

  const pkResult = await client.query(
    `
      SELECT 1
      FROM pg_constraint con
      JOIN pg_class rel ON rel.oid = con.conrelid
      JOIN pg_namespace nsp ON nsp.oid = rel.relnamespace
      WHERE nsp.nspname = 'hardpoint'
        AND rel.relname = 'items'
        AND con.contype = 'p'
    `,
  );
  if (!pkResult.rows.length) {
    await client.query(`ALTER TABLE hardpoint.items ADD PRIMARY KEY (item_guid)`);
  }
}

module.exports = {
  1: async (client) => {
    const tableResult = await client.query(
      `
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'hardpoint'
          AND table_name = 'characters'
          AND table_type = 'BASE TABLE'
      `,
    );
    if (!tableResult.rows.length) {
      return;
    }

    const columnResult = await client.query(
      `
        SELECT column_name
        FROM information_schema.columns
        WHERE table_schema = 'hardpoint'
          AND table_name = 'characters'
          AND column_name = 'character_guid'
      `,
    );
    if (columnResult.rows.length) {
      return;
    }

    await client.query(`
      ALTER TABLE hardpoint.characters
        ADD COLUMN character_guid uuid
    `);

    const countResult = await client.query(`SELECT COUNT(*)::int AS count FROM hardpoint.characters`);
    const rowCount = countResult.rows[0]?.count ?? 0;

    if (rowCount === 0) {
      await client.query(`
        ALTER TABLE hardpoint.characters
          ALTER COLUMN character_guid SET NOT NULL
      `);
    }

    await client.query(`
      DO $$
      BEGIN
        IF NOT EXISTS (
          SELECT 1
          FROM pg_constraint
          WHERE conname = 'characters_character_guid_fkey'
            AND conrelid = 'hardpoint.characters'::regclass
        ) THEN
          ALTER TABLE hardpoint.characters
            ADD CONSTRAINT characters_character_guid_fkey
            FOREIGN KEY (character_guid) REFERENCES genrpg.characters(guid) ON DELETE CASCADE;
        END IF;
      END
      $$
    `);

    await client.query(`
      CREATE UNIQUE INDEX IF NOT EXISTS characters_character_guid_key
        ON hardpoint.characters (character_guid)
        WHERE character_guid IS NOT NULL
    `);
  },
  2: addGenrpgItemExtensionColumns,
  3: addGenrpgItemExtensionColumns,
  4: reshapeHardpointItemsForGenrpgExtension,
};
