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
  2: async (client) => {
    const tableResult = await client.query(
      `
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'hardpoint'
          AND table_name = 'items'
          AND table_type = 'BASE TABLE'
      `,
    );
    if (tableResult.rows.length) {
      return;
    }

    await client.query(`
      CREATE TABLE hardpoint.items (
        item_guid uuid PRIMARY KEY REFERENCES genrpg.items(guid) ON DELETE CASCADE,
        value double precision,
        create_datetime timestamptz NOT NULL DEFAULT now(),
        update_datetime timestamptz NOT NULL DEFAULT now()
      )
    `);

    await client.query(`
      DROP TRIGGER IF EXISTS items_update_datetime ON hardpoint.items
    `);
    await client.query(`
      CREATE TRIGGER items_update_datetime
        BEFORE UPDATE ON hardpoint.items
        FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime()
    `);
  },
};
