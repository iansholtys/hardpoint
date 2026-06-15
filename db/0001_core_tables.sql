-- Created: 2026-05-22

CREATE TABLE IF NOT EXISTS hardpoint.skills (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS skills_update_datetime ON hardpoint.skills;
CREATE TRIGGER skills_update_datetime BEFORE UPDATE ON hardpoint.skills FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.occupations (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS occupations_update_datetime ON hardpoint.occupations;
CREATE TRIGGER occupations_update_datetime BEFORE UPDATE ON hardpoint.occupations FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.hardpoint_types (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS hardpoint_types_update_datetime ON hardpoint.hardpoint_types;
CREATE TRIGGER hardpoint_types_update_datetime BEFORE UPDATE ON hardpoint.hardpoint_types FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.features (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS features_update_datetime ON hardpoint.features;
CREATE TRIGGER features_update_datetime BEFORE UPDATE ON hardpoint.features FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
