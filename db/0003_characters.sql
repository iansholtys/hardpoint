-- Created: 2026-05-22

CREATE TABLE IF NOT EXISTS hardpoint.characters (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_guid uuid NOT NULL UNIQUE REFERENCES genrpg.characters(guid) ON DELETE CASCADE,
  occupation_guid uuid REFERENCES hardpoint.occupations(guid) ON DELETE SET NULL,
  body integer NOT NULL DEFAULT 0,
  mind integer NOT NULL DEFAULT 0,
  spirit integer NOT NULL DEFAULT 0,
  current_exp double precision NOT NULL DEFAULT 0,
  total_exp double precision NOT NULL DEFAULT 0,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS characters_update_datetime ON hardpoint.characters;
CREATE TRIGGER characters_update_datetime BEFORE UPDATE ON hardpoint.characters FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_experience_points (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_guid uuid NOT NULL REFERENCES hardpoint.characters(guid) ON DELETE CASCADE,
  exp double precision NOT NULL,
  description text,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_experience_points_update_datetime ON hardpoint.character_experience_points;
CREATE TRIGGER character_experience_points_update_datetime BEFORE UPDATE ON hardpoint.character_experience_points FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_skills (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_guid uuid NOT NULL REFERENCES hardpoint.characters(guid) ON DELETE CASCADE,
  skill_guid uuid NOT NULL REFERENCES hardpoint.skills(guid) ON DELETE CASCADE,
  value integer NOT NULL DEFAULT 0,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_skills_update_datetime ON hardpoint.character_skills;
CREATE TRIGGER character_skills_update_datetime BEFORE UPDATE ON hardpoint.character_skills FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();

CREATE TABLE IF NOT EXISTS hardpoint.character_inventory (
  guid uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  character_guid uuid NOT NULL REFERENCES hardpoint.characters(guid) ON DELETE CASCADE,
  item_guid uuid NOT NULL REFERENCES genrpg.items(guid) ON DELETE CASCADE,
  name text,
  description text,
  quantity integer NOT NULL DEFAULT 1,
  create_datetime timestamptz NOT NULL DEFAULT now(),
  update_datetime timestamptz NOT NULL DEFAULT now()
);
DROP TRIGGER IF EXISTS character_inventory_update_datetime ON hardpoint.character_inventory;
CREATE TRIGGER character_inventory_update_datetime BEFORE UPDATE ON hardpoint.character_inventory FOR EACH ROW EXECUTE FUNCTION genrpg.set_update_datetime();
