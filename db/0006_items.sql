-- Created: 2026-06-02
-- Extends genrpg.items with package-specific columns (joined on item_guid).

CREATE TABLE IF NOT EXISTS hardpoint.items (
  item_guid uuid PRIMARY KEY REFERENCES genrpg.items(guid) ON DELETE CASCADE,
  value double precision,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);

DROP TRIGGER IF EXISTS items_update_datetime ON hardpoint.items;
CREATE TRIGGER items_update_datetime
  BEFORE UPDATE ON hardpoint.items
  FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
