-- Created: 2026-05-22
-- Seed data for skills, occupations, occupation_skills, and hardpoint_types

INSERT INTO hardpoint.skills (guid, name, description, is_pilot_skill, is_body, is_mind, is_spirit) VALUES
(gen_random_uuid(), 'Academics', 'Knowledge of history, science, literature, and general scholarly subjects.', false, false, true, false),
(gen_random_uuid(), 'Athletics', 'Physical fitness, endurance, speed, and athletic coordination.', false, true, false, false),
(gen_random_uuid(), 'Awareness', 'Attentiveness to surroundings, people, and subtle changes in the environment.', false, false, true, true),
(gen_random_uuid(), 'Barter', 'Negotiating prices, assessing value, and making profitable trades.', false, false, true, false),
(gen_random_uuid(), 'Command', 'Directing others, issuing orders, and leading groups effectively.', false, false, true, true),
(gen_random_uuid(), 'Craft', 'Skill in creating, repairing, and modifying objects by hand or machine.', false, true, true, true),
(gen_random_uuid(), 'Close Combat', 'Fighting at close range with melee weapons and unarmed strikes.', false, true, false, false),
(gen_random_uuid(), 'Etiquette', 'Knowledge of social customs, formal behavior, and cultural protocols.', false, false, false, true),
(gen_random_uuid(), 'Investigation', 'Searching for clues, analyzing evidence, and uncovering hidden information.', false, false, true, true),
(gen_random_uuid(), 'Interrogation', 'Extracting information from others through questioning and psychological pressure.', false, false, false, true),
(gen_random_uuid(), 'Languages', 'Knowledge of spoken and written languages beyond one''s native tongue.', false, false, true, false),
(gen_random_uuid(), 'Larceny', 'Stealing, picking pockets, lockpicking, and bypassing security measures.', false, true, true, true),
(gen_random_uuid(), 'Mechanics', 'Understanding, repairing, and maintaining mechanical systems and engines.', false, false, true, false),
(gen_random_uuid(), 'Medicine', 'Diagnosing injuries and illnesses, providing treatment, and performing surgery.', false, false, true, false),
(gen_random_uuid(), 'Perform', 'Entertaining audiences through music, acting, dance, or other artistic expression.', false, false, false, true),
(gen_random_uuid(), 'Persuade', 'Convincing others through charm, logic, or emotional appeal.', false, true, true, true),
(gen_random_uuid(), 'Publicity', 'Generating attention, managing reputation, and influencing public opinion.', false, false, false, true),
(gen_random_uuid(), 'Ride', 'Mounting, controlling, and riding animals or mounts with skill.', false, true, false, true),
(gen_random_uuid(), 'Sail', 'Navigating watercraft, reading currents, and managing maritime travel.', false, false, true, true),
(gen_random_uuid(), 'Shooting', 'Aiming and firing ranged weapons with accuracy under various conditions.', false, true, false, false),
(gen_random_uuid(), 'Stealth', 'Moving silently, hiding from detection, and operating covertly.', false, true, false, true),
(gen_random_uuid(), 'Survival', 'Finding food and shelter, navigating wilderness, and enduring harsh environments.', false, false, true, false);

INSERT INTO hardpoint.skills (guid, name, description, is_pilot_skill, is_body, is_mind, is_spirit) VALUES
(gen_random_uuid(), 'Gunnery', 'Firing standard ranged weapons and fixed fighter guns with precision.', true, false, false, false),
(gen_random_uuid(), 'Melee', 'Extreme close-quarters combat including melee weapons, hand-to-hand fighting, and grapple-range ship combat.', true, false, false, false),
(gen_random_uuid(), 'Ordnance', 'Operating heavy weapons systems such as cannons, rockets, and bombs.', true, false, false, false),
(gen_random_uuid(), 'Piloting', 'Controlling and maneuvering a vehicle through space or terrain with skill.', true, false, false, false),
(gen_random_uuid(), 'Strafing', 'Attacking ground targets and flying at close range to obstacles with precision.', true, false, false, false);

INSERT INTO hardpoint.occupations (guid, name, description) VALUES
(gen_random_uuid(), 'Rural', 'Farmer, herder, rancher'),
(gen_random_uuid(), 'Wilderness', 'Hunter, tracker, guide'),
(gen_random_uuid(), 'Industrial', 'Engineer, crew member'),
(gen_random_uuid(), 'Journalist', 'Reporter, writer'),
(gen_random_uuid(), 'Entertainer', 'Musician, actor'),
(gen_random_uuid(), 'Urban', 'Office worker, shopkeeper, executive'),
(gen_random_uuid(), 'Security', 'Military, police, mercenary'),
(gen_random_uuid(), 'Criminal', 'Thief, pirate, smuggler'),
(gen_random_uuid(), 'Academic', 'Researcher, teacher, scientist'),
(gen_random_uuid(), 'Laborer', 'Factory worker, miner'),
(gen_random_uuid(), 'Medical', 'Doctor, nurse');

INSERT INTO hardpoint.occupation_skills (guid, occupation_guid, skill_guid, value) VALUES
-- Rural: Craft and Ride
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Rural'), (SELECT guid FROM hardpoint.skills WHERE name = 'Craft' AND is_pilot_skill = false), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Rural'), (SELECT guid FROM hardpoint.skills WHERE name = 'Ride'), 1),
-- Wilderness: Survival and Awareness
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Wilderness'), (SELECT guid FROM hardpoint.skills WHERE name = 'Survival'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Wilderness'), (SELECT guid FROM hardpoint.skills WHERE name = 'Awareness'), 1),
-- Industrial: Mechanics level 2
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Industrial'), (SELECT guid FROM hardpoint.skills WHERE name = 'Mechanics'), 2),
-- Journalist: Investigation and Craft
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Journalist'), (SELECT guid FROM hardpoint.skills WHERE name = 'Investigation'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Journalist'), (SELECT guid FROM hardpoint.skills WHERE name = 'Craft' AND is_pilot_skill = false), 1),
-- Entertainer: Perform and Etiquette
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Entertainer'), (SELECT guid FROM hardpoint.skills WHERE name = 'Perform'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Entertainer'), (SELECT guid FROM hardpoint.skills WHERE name = 'Etiquette'), 1),
-- Urban: Barter and Etiquette
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Urban'), (SELECT guid FROM hardpoint.skills WHERE name = 'Barter'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Urban'), (SELECT guid FROM hardpoint.skills WHERE name = 'Etiquette'), 1),
-- Security: Athletics and Shooting
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Security'), (SELECT guid FROM hardpoint.skills WHERE name = 'Athletics'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Security'), (SELECT guid FROM hardpoint.skills WHERE name = 'Shooting'), 1),
-- Criminal: Larceny and Stealth
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Criminal'), (SELECT guid FROM hardpoint.skills WHERE name = 'Larceny'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Criminal'), (SELECT guid FROM hardpoint.skills WHERE name = 'Stealth'), 1),
-- Academic: Academics level 2
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Academic'), (SELECT guid FROM hardpoint.skills WHERE name = 'Academics'), 2),
-- Laborer: Athletics and Close Combat
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Laborer'), (SELECT guid FROM hardpoint.skills WHERE name = 'Athletics'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Laborer'), (SELECT guid FROM hardpoint.skills WHERE name = 'Close Combat'), 1),
-- Medical: Medicine and Academics
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Medical'), (SELECT guid FROM hardpoint.skills WHERE name = 'Medicine'), 1),
(gen_random_uuid(), (SELECT guid FROM hardpoint.occupations WHERE name = 'Medical'), (SELECT guid FROM hardpoint.skills WHERE name = 'Academics'), 1);

INSERT INTO hardpoint.hardpoint_types (guid, name, description) VALUES
(gen_random_uuid(), 'Integrated', 'Built-in systems that are permanently attached to the vehicle frame.'),
(gen_random_uuid(), 'Actuator', 'Slots for responsive actuator-driven weapons and sensors requiring fast targeting.'),
(gen_random_uuid(), 'Main', 'Primary hardpoints for standard weapon and sensor installations.'),
(gen_random_uuid(), 'Flex', 'Versatile slots that can be reconfigured between different equipment types.'),
(gen_random_uuid(), 'Accessory', 'Minor slots for supplementary gear, sensors, and support systems.'),
(gen_random_uuid(), 'Heavy', 'Reinforced mounts designed for large weapons and heavy equipment.'),
(gen_random_uuid(), 'Engine', 'Power plant slots for primary and auxiliary propulsion systems.');
