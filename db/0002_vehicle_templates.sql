-- Created: 2026-05-22

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_types (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_types_update_datetime ON hardpoint.vehicle_types;
CREATE TRIGGER vehicle_types_update_datetime BEFORE UPDATE ON hardpoint.vehicle_types FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicles (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  vehicle_type_guid uuid REFERENCES hardpoint.vehicle_types(guid) ON DELETE SET NULL,
  vehicle_size text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicles_update_datetime ON hardpoint.vehicles;
CREATE TRIGGER vehicles_update_datetime BEFORE UPDATE ON hardpoint.vehicles FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_stats (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  armor integer NOT NULL,
  performance integer NOT NULL,
  structure integer NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_stats_update_datetime ON hardpoint.vehicle_stats;
CREATE TRIGGER vehicle_stats_update_datetime BEFORE UPDATE ON hardpoint.vehicle_stats FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_features (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  feature_guid uuid NOT NULL REFERENCES hardpoint.features(guid) ON DELETE CASCADE,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_features_update_datetime ON hardpoint.vehicle_features;
CREATE TRIGGER vehicle_features_update_datetime BEFORE UPDATE ON hardpoint.vehicle_features FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_hardpoints (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  hardpoint_type_guid uuid NOT NULL REFERENCES hardpoint.hardpoint_types(guid) ON DELETE CASCADE,
  item_guid uuid REFERENCES genrpg.items(guid) ON DELETE SET NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_hardpoints_update_datetime ON hardpoint.vehicle_hardpoints;
CREATE TRIGGER vehicle_hardpoints_update_datetime BEFORE UPDATE ON hardpoint.vehicle_hardpoints FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_cargo (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  name text NOT NULL,
  description text,
  cargo_size double precision NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_cargo_update_datetime ON hardpoint.vehicle_cargo;
CREATE TRIGGER vehicle_cargo_update_datetime BEFORE UPDATE ON hardpoint.vehicle_cargo FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.vehicle_crew_positions (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  vehicle_guid uuid NOT NULL REFERENCES hardpoint.vehicles(guid) ON DELETE CASCADE,
  name text NOT NULL,
  quantity double precision NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS vehicle_crew_positions_update_datetime ON hardpoint.vehicle_crew_positions;
CREATE TRIGGER vehicle_crew_positions_update_datetime BEFORE UPDATE ON hardpoint.vehicle_crew_positions FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
