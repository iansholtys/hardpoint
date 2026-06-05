-- Created: 2026-05-22

CREATE TABLE IF NOT EXISTS hardpoint.skills (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  is_pilot_skill boolean NOT NULL DEFAULT false,
  is_body boolean NOT NULL DEFAULT false,
  is_mind boolean NOT NULL DEFAULT false,
  is_spirit boolean NOT NULL DEFAULT false,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS skills_update_datetime ON hardpoint.skills;
CREATE TRIGGER skills_update_datetime BEFORE UPDATE ON hardpoint.skills FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.occupations (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS occupations_update_datetime ON hardpoint.occupations;
CREATE TRIGGER occupations_update_datetime BEFORE UPDATE ON hardpoint.occupations FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.occupation_skills (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  occupation_guid uuid NOT NULL REFERENCES hardpoint.occupations(guid) ON DELETE CASCADE,
  skill_guid uuid NOT NULL REFERENCES hardpoint.skills(guid) ON DELETE CASCADE,
  value integer NOT NULL DEFAULT 1,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS occupation_skills_update_datetime ON hardpoint.occupation_skills;
CREATE TRIGGER occupation_skills_update_datetime BEFORE UPDATE ON hardpoint.occupation_skills FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.hardpoint_types (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS hardpoint_types_update_datetime ON hardpoint.hardpoint_types;
CREATE TRIGGER hardpoint_types_update_datetime BEFORE UPDATE ON hardpoint.hardpoint_types FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.items (
  item_guid uuid PRIMARY KEY REFERENCES genrpg.items(guid) ON DELETE CASCADE,
  is_equipment boolean NOT NULL DEFAULT false,
  value double precision,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS items_update_datetime ON hardpoint.items;
CREATE TRIGGER items_update_datetime BEFORE UPDATE ON hardpoint.items FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.item_hardpoints (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  item_guid uuid NOT NULL REFERENCES genrpg.items(guid) ON DELETE CASCADE,
  hardpoint_type_guid uuid NOT NULL REFERENCES hardpoint.hardpoint_types(guid) ON DELETE CASCADE,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS item_hardpoints_update_datetime ON hardpoint.item_hardpoints;
CREATE TRIGGER item_hardpoints_update_datetime BEFORE UPDATE ON hardpoint.item_hardpoints FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.features (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  description text,
  is_vehicle boolean NOT NULL DEFAULT false,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS features_update_datetime ON hardpoint.features;
CREATE TRIGGER features_update_datetime BEFORE UPDATE ON hardpoint.features FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.feature_bonuses (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  feature_guid uuid NOT NULL REFERENCES hardpoint.features(guid) ON DELETE CASCADE,
  skill_guid uuid NOT NULL REFERENCES hardpoint.skills(guid) ON DELETE CASCADE,
  bonus integer NOT NULL,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS feature_bonuses_update_datetime ON hardpoint.feature_bonuses;
CREATE TRIGGER feature_bonuses_update_datetime BEFORE UPDATE ON hardpoint.feature_bonuses FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.feature_prerequisites (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  feature_guid uuid NOT NULL REFERENCES hardpoint.features(guid) ON DELETE CASCADE,
  prerequisite_feature_guid uuid NOT NULL REFERENCES hardpoint.features(guid) ON DELETE CASCADE,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS feature_prerequisites_update_datetime ON hardpoint.feature_prerequisites;
CREATE TRIGGER feature_prerequisites_update_datetime BEFORE UPDATE ON hardpoint.feature_prerequisites FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
