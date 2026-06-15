-- Created: 2026-05-22
-- DEFERRED: Character-owned vehicle instances — not part of the current scope.
-- Re-enable when the vehicle / character_vehicle model is designed.
-- See docs/field-storage-overhaul.md

/*
CREATE TABLE IF NOT EXISTS hardpoint.character_vehicles (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  name text,
  description text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicles_update_datetime ON hardpoint.character_vehicles;
CREATE TRIGGER character_vehicles_update_datetime BEFORE UPDATE ON hardpoint.character_vehicles FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_ownership (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_guid uuid NOT NULL REFERENCES hardpoint.characters(guid) ON DELETE CASCADE,
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_ownership_update_datetime ON hardpoint.character_vehicle_ownership;
CREATE TRIGGER character_vehicle_ownership_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_ownership FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_stats (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  armor integer NOT NULL,
  performance integer NOT NULL,
  structure integer NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_stats_update_datetime ON hardpoint.character_vehicle_stats;
CREATE TRIGGER character_vehicle_stats_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_stats FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_features (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  feature_guid uuid NOT NULL REFERENCES hardpoint.features(guid) ON DELETE CASCADE,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_features_update_datetime ON hardpoint.character_vehicle_features;
CREATE TRIGGER character_vehicle_features_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_features FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_hardpoints (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  hardpoint_type_guid uuid NOT NULL REFERENCES hardpoint.hardpoint_types(guid) ON DELETE CASCADE,
  item_guid uuid REFERENCES genrpg.items(guid) ON DELETE SET NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_hardpoints_update_datetime ON hardpoint.character_vehicle_hardpoints;
CREATE TRIGGER character_vehicle_hardpoints_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_hardpoints FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_cargo (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  cargo_size double precision NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_cargo_update_datetime ON hardpoint.character_vehicle_cargo;
CREATE TRIGGER character_vehicle_cargo_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_cargo FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_vehicle_crew_positions (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_vehicle_guid uuid NOT NULL REFERENCES hardpoint.character_vehicles(guid) ON DELETE CASCADE,
  name text NOT NULL,
  character_guid uuid REFERENCES hardpoint.characters(guid) ON DELETE SET NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_vehicle_crew_positions_update_datetime ON hardpoint.character_vehicle_crew_positions;
CREATE TRIGGER character_vehicle_crew_positions_update_datetime BEFORE UPDATE ON hardpoint.character_vehicle_crew_positions FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
*/
