# Vehicle Stats

Hardpoint vehicles operate under a distinct statistical framework from characters, designed to accommodate the vast scale difference between a pilot in a mech suit and a capital ship crewed by dozens. While character stats rely on the compact -3 to +3 modifier scale, vehicle stats use broader numerical ranges appropriate for machines of varying size, capability, and purpose. Vehicle combat mechanics are anchored by the crew's **Situational Awareness** (SA), which bridges the gap between character capabilities and vehicular performance.

## Primary Stats Overview

Vehicles in Hardpoint define nine primary stats:

- **Armor**: Damage reduction against incoming attacks.
- **Performance**: Abstract relative performance rating within the vehicle's class.
- **Structure**: Total health before the vehicle is destroyed.
- **Crew**: Optimal crew complement required to operate the vehicle effectively.
- **Hardpoints**: Attachment points for weapons, shields, engines, and other systems.
- **Cargo**: Available storage space measured in "cubes".
- **Traits**: Frame-level upgrades that improve performance or grant specialized capabilities.
- **Scale**: Classification of physical magnitude affecting cross-scale combat modifiers.
- **Size**: Numerical rating (0-9) denoting relative size within a Scale.

Unlike character primary stats — which are constrained by a fixed sum — vehicle primary stats can vary independently depending on the vessel's design philosophy. A heavily armored capital ship will naturally sacrifice Performance, while an agile fighter trades Structure for superior maneuverability. These trade-offs form the core of vehicle customization and tactical decision-making.

---

## Scale

Scale classifies vehicles by physical magnitude into four distinct categories: **Personal**, **Vehicle**, **Capital**, and **Supermassive**. Scale is a foundational property that determines how damage is calculated in cross-scale combat, applies hit disadvantage penalties for targeting significantly smaller or larger opponents, and provides a consistent framework for comparing vehicles across orders of magnitude.

### What Scale Influences

Scale directly affects the following combat mechanics:

- **Cross-scale damage modifiers**: Attacking a target one scale larger halves damage (before armor calculation); attacking a target one scale smaller doubles damage. Each additional scale difference compounds this effect multiplicatively.
- **Hit disadvantage**: Targeting one scale smaller grants Disadvantage to hit (2 Disadvantage for two scales difference, and so on). A Capital-scale vehicle targeting Personal-scale suffers 2 Disadvantage.
- **Practical engagement range**: Weapons beyond two scales differ become largely impractical due to compounded penalties, making cross-scale engagements beyond one tier strategically inefficient.

### Practical Context

| Scenario | Small Scale (Personal/Vehicle) | Large Scale (Capital/Supermassive) |
| -------- | ------------------------------ | ---------------------------------- |
| Fighting same scale | Standard damage and accuracy | Standard damage and accuracy |
| Fighting smaller targets | Double damage per scale difference; risk of Disadvantage | Double damage per scale difference; heavy Disadvantage (-2+ scales) |
| Fighting larger targets | Half damage per scale difference; may be irrelevant | Absorbs half damage from smaller attackers with ease |

### Scale Categories

| Scale | Size Range | Typical Vehicles |
| ----- | ---------- | ---------------- |
| Personal | 0-5m | People, power suits, small mechs |
| Vehicle | 5-100m | Cars, aircraft, tanks, mechs, small boats |
| Capital | 100m-20km | Warships, transports, space stations |
| Supermassive | 20km+ | Dreadnoughts, mega-ships, orbital structures |

---

## Size

Size is a numerical rating from **0** to **9** that denotes an entity's relative position within its Scale. A Size of 0 indicates the entity is smaller than typical for its Scale but still classified within it. Size tiers provide granular differentiation between entities sharing the same Scale, enabling more precise comparisons and ensuring that scale-based modifiers remain proportionally balanced in combat calculations.

### What Size Influences

Size provides additional granularity beyond base Scale classification:

- **Relative positioning**: Determines how a vehicle compares to others of the same Scale for collision, boarding, and proximity effects.
- **Fine-grained damage adjustments**: Provides nuance within a Scale — a V5 fighter deals slightly more baseline damage than a V1 car despite both being Vehicle-scale.
- **Cargo and capacity estimation**: Larger Size within a Scale typically correlates with greater internal volume for cargo and crew.

### Practical Context

| Scenario | Low Size (0-2) | High Size (7-9) |
| -------- | -------------- | ---------------- |
| Within-scale combat | Slightly smaller target; marginally harder to hit | Larger silhouette; easier target but potentially more firepower |
| Capacity | Minimal internal volume; limited cargo and crew space | Generous internal volume; supports extensive systems and supplies |
| Maneuverability | Lighter and more responsive within its Scale class | Heavier inertia; requires more power for equivalent maneuvers |

### Size Tier Reference

| Prefix | Scale | Range Example (P1/V1/C1/S1) |
| ------ | ----- | --------------------------- |
| P0-P9 | Personal | P3 = average human (1.5-2m); P9 = ~5m tall |
| V0-V9 | Vehicle | V1 = car (~5m); V5 = heavy fighter (20-30m); V9 = 100m |
| C0-C9 | Capital | C1 = frigate (~120m); C5 = aircraft carrier (~300m); C9 = ~20km |
| S0-S5+ | Supermassive | S0 = Executor dreadnought (29km); S5 = Death Star (160km) |

---

## Armor

Armor represents the protective plating installed on a vehicle's frame. It provides damage reduction against incoming attacks, absorbing or deflecting energy before it reaches the vehicle's internal structure.

### What Armor Influences

Armor is the primary defensive statistic for vehicles, affecting:

- **Damage mitigation**: Reduces the amount of damage taken from all sources, including ballistic fire, energy weapons, explosions, and environmental impacts.
- **Structural preservation**: Higher Armor delays the degradation of Structure, allowing the vehicle to remain combat-effective longer in sustained engagements.
- **Resistance to penetrating attacks**: Modifies checks against high-damage or armor-piercing weaponry that attempts to bypass surface plating.

### Practical Context

| Scenario | Low Armor (0-3) | High Armor (7-9) |
| -------- | --------------- | ---------------- |
| Skirmish combat | Takes significant damage from even light weapons; must rely on evasion | Shrugs off light and medium attacks; can trade blows confidently |
| Heavy fire | Structure degrades quickly under sustained bombardment | Absorbs heavy punishment; remains operational through prolonged engagements |
| Environmental hazards | Vulnerable to debris, asteroid impacts, and harsh conditions | Resists environmental damage effectively; suitable for rough operations |

### Scaling Considerations

Armor values typically range from **0** (unarmored or lightly framed vehicles) to **10+** (heavily plated capital ships). The Performance stat often inversely correlates with Armor: installing heavier plating increases weight, which reduces agility. Players must balance protection against maneuverability when configuring their vehicles.

---

## Performance

Performance is an abstract statistic that denotes the relative combat effectiveness of a vehicle within its class. It captures qualities such as engine responsiveness, frame agility, sensor precision, and overall design sophistication — distilled into a single modifier.

### What Performance Influences

Performance serves as a universal bonus to vehicular actions, affecting:

- **Maneuvering checks**: Directly modifies Dogfighting and Strafing derived stats, representing how well the vehicle can execute complex movements.
- **Close-quarters combat**: Adds to Melee attack rolls when vehicles engage in physical contact combat (such as mech-to-mech brawling or ship ramming).
- **Evasive capability**: Contributes to Break Defense and other defensive calculations, reflecting how quickly the vehicle can change direction.

### Practical Context

| Scenario | Low Performance (-2 to -1) | High Performance (+2 to +3) |
| -------- | ------------------------- | -------------------------- |
| Dogfighting | Struggles with tight turns; easily outmaneuvered by agile opponents | Executes complex maneuvers effortlessly; can track and outturn superior foes |
| Strafing run | Slow acceleration makes timing approaches difficult | Rapid acceleration and precise positioning enable devastating strafing passes |
| Evasive action | Predictable movement patterns make the vehicle an easy target | Unpredictable, fluid movements make the vehicle difficult to lock onto |

### Scaling Considerations

Performance follows the same **-3 to +3 modifier scale** as character stats. This deliberate design choice ensures that Performance remains a meaningful but bounded contribution to derived calculations, preventing any single vehicle from overwhelming encounters through raw stat inflation. Lightweight frames (fighters, mechs) tend toward higher Performance, while heavy vessels (transports, capital ships) accept lower values for increased capacity and firepower.

---

## Structure

Structure represents the total hit points of a vehicle — the amount of damage it can absorb before being destroyed or rendered inoperable. It measures the structural integrity of the vehicle's frame, power systems, and critical components combined into a single durability metric. Fighters tend to have between 2 and 5 points of structure while larger vehicles could have 10 or more.

### What Structure Influences

Structure governs vehicular survivability:

- **Damage tracking**: Each hit reduces current Structure. When Structure reaches 0, the vehicle is destroyed (or suffers catastrophic failure).
- **Combat endurance**: Determines how many exchanges a vehicle can survive before being forced to retreat or risking destruction.
- **Repair priority**: Vehicles with higher Structure provide more margin for error, allowing crews to focus on tactical objectives rather than damage control.

### Practical Context

| Scenario | Low Structure (1-3) | High Structure (4-6+) |
| -------- | ------------------- | -------------------- |
| Extended engagement | Must avoid taking hits; a few solid strikes can eliminate the vehicle | Can absorb significant punishment and remain in the fight |
| Damage tolerance | Requires careful positioning and timely retreats | Can trade damage for tactical advantages, using Structure as a resource |
| Repair window | Needs frequent repair intervals during long missions | Can operate for extended periods without maintenance |

### Scaling Considerations

Structure values scale broadly depending on vehicle class. A lightweight fighter might have **2** Structure, while a capital ship could possess **10 or more**. Armor reduces incoming damage to help preserve Structure, making the two stats synergistic: high Armor extends effective Structure by minimizing each individual hit. Players should consider both stats together when evaluating vehicle survivability.

---

## Crew

Crew represents the optimal number and types of personnel required to operate a vehicle effectively. Unlike other primary stats, Crew is not a single numerical value but rather a roster specification that defines which roles must be filled for the vehicle to function at full capability.

### What Crew Influences

Crew composition affects multiple aspects of vehicular operation:

- **System operation**: Each crew role (Pilot, Weapons Engineer, Navigator, etc.) governs specific systems and contributes relevant character skills to derived stat calculations.
- **Multitasking capacity**: Vehicles with larger crews can operate multiple systems simultaneously — such as firing weapons while maneuvering and managing shields.
- **Situational Awareness scaling**: Different crew members contribute their individual SA values to different vehicle functions, allowing specialized roles to excel in their domain.

### Practical Context

| Scenario | Minimal Crew (1-2) | Full Crew (5+) |
| -------- | ------------------ | -------------- |
| Solo operation | Single pilot handles all systems; may struggle with multitasking under pressure | Dedicated specialists manage each system efficiently; coordinated team performance |
| Role specialization | Pilot must balance piloting, weapons, and defense simultaneously | Each crew member focuses on their specialty, maximizing overall effectiveness |
| Redundancy | Loss of a single crew member can cripple vehicle function | Remaining crew can absorb lost duties with reduced efficiency |

### Crew Roles

Common crew roles include:

- **Pilot**: Controls vehicle movement and maneuvering. Contributes Piloting skill to Dogfighting, Strafing, Break Defense, and related checks.
- **Weapons Operator / Engineer**: Manages weapon systems and target acquisition. Contributes Gunnery or Ordinance skills to attack rolls.
- **Navigator / Sensor Operator**: Handles navigation, target tracking, and situational awareness. May boost SA-related calculations for the entire crew.
- **Captain**: Provides command and coordination bonuses. Particularly relevant on larger vessels with multiple crew members requiring direction.

When a vehicle operates below optimal crew capacity, it may suffer penalties to certain derived stats or lose access to specific systems entirely. The game master determines the severity of these penalties based on which roles are unfilled.

---

## Hardpoints

Hardpoints are standardized attachment points on a vehicle's frame where weapons, shields, engines, and other equipment can be installed. Unlike simple numerical slots, Hardpoints come in distinct types — each supporting specific categories of equipment. This system allows for highly customizable vehicle configurations while maintaining balance through mount compatibility constraints.

### Hardpoint Types

| Type | Description | Typical Equipment |
| ---- | ----------- | ----------------- |
| **Main Mounts** | Primary weapon stations capable of firing heavy, high-damage weapons | Beam turrets, autocannons, torpedo launchers |
| **Heavy Mounts** | Secondary weapon stations for moderate firepower and support systems | Missile pods, heavy shields, sensor arrays |
| **Flex Mounts** | Versatile attachment points adaptable to multiple equipment types | Shield generators, radar boosters, auxiliary weapons |
| **Accessory Mounts** | Small slots for supplementary gear and consumables | Extra weapon reloads, repair kits, communication equipment |
| **Engine Mounts** | Dedicated power and propulsion installation points | Fusion reactors, jet engines, thruster packs |
| **Integrated Mounts** | Built-in systems permanently installed on the vehicle frame | Vulcan cannons, point-defense lasers, structural reinforcements |
| **Actuators** | Mechanical appendages that can carry weapons or tools (primarily for mechs) | Hands wielding melee weapons, mounted firearms, manipulation claws |

### What Hardpoints Influence

Hardpoint configuration determines a vehicle's combat loadout and operational versatility:

- **Offensive capability**: The number and type of weapon mounts dictate the range, diversity, and intensity of available firepower.
- **Defensive layering**: Shield generators and defensive systems require specific hardpoint types, influencing how protection is layered against different attack vectors.
- **Mobility and power**: Engine mounts determine propulsion capacity, which affects top speed, acceleration, and fuel efficiency.
- **Adaptability**: Flex and Accessory mounts allow mission-specific customization, enabling the same vehicle chassis to serve in multiple roles.

### Practical Context

| Scenario | Limited Hardpoints (2-4 total) | Extensive Hardpoints (8+ total) |
| -------- | ------------------------------ | ------------------------------- |
| Loadout flexibility | Must carefully select a few key systems; limited adaptability | Can equip diverse systems for multiple combat scenarios |
| Weapon diversity | Typically restricted to one or two weapon types | Can combine beams, missiles, and ballistic weapons in a single loadout |
| Upgrade potential | Few slots available for mid-campaign upgrades | Significant room to swap and improve equipment as the campaign progresses |

### Configuration Rules

- Each hardpoint can typically hold **one piece of equipment** at a time.
- Equipment specifies which hardpoint types it requires during installation. A beam turret requiring a Main Mount cannot be installed on an Accessory slot.
- Some vehicles feature **exclusive mounts** that only support specific equipment (such as a mech's Integrated mount for its built-in vulcan cannon).
- Actuator hardpoints function as both weapon carriers and manipulation tools, making them particularly versatile for mechs that engage in close-quarters combat or require object interaction.

---

## Cargo

Cargo measures the available storage space within a vehicle, expressed in standardized units called "cubes". Each item carried — from spare ammunition to replacement parts to collected artifacts — consumes a certain number of cubes based on its size and weight.

### What Cargo Influences

Cargo capacity determines logistical flexibility:

- **Supply carrying**: Limits how much ammunition, fuel, food, and repair materials a vehicle can transport between missions.
- **Loot and objectives**: Constrains the amount of treasure, data cores, or other mission rewards that can be collected during operations.
- **Mission planning**: Vehicles with limited Cargo must carefully select what to carry, potentially requiring resupply stops or support vessels for extended campaigns.

### Practical Context

| Scenario | Low Cargo (10-50 cubes) | High Cargo (100+ cubes) |
| -------- | ----------------------- | ---------------------- |
| Short missions | Sufficient for basic supplies and limited loot | Can carry extensive equipment with room for significant rewards |
| Extended operations | Requires frequent resupply; must prioritize essential items | Self-sustaining for long durations; can support other units with excess capacity |
| Hauling objectives | Limited to small, high-value items | Capable of transporting large artifacts, vehicles, or bulk resources |

### Scaling Considerations

Cargo values vary dramatically across vehicle classes. A fighter might offer **20 cubes** for essential supplies and a few loot items, while a capital ship could provide **10,000 cubes** capable of carrying entire squadrons worth of equipment. Cargo does not directly affect combat statistics but plays a crucial role in mission planning and resource management.

---

## Traits

Traits are frame-level upgrades installed on a vehicle that improve specific capabilities beyond what raw stats and hardpoint configurations can provide. Unlike equipment mounted on hardpoints, Traits are integrated into the vehicle's chassis or systems and modify how base statistics perform in practice.

### What Traits Influences

Traits provide targeted bonuses to derived stats and special abilities:

- **Performance enhancement**: Some Traits boost Performance in specific contexts (such as improved gyroscopes for better Dogfighting, or enhanced sensors for superior target acquisition).
- **Defensive improvements**: Reinforced frames, reactive armor, or stealth coatings can modify Armor, Structure, or defensive derived stats.
- **Specialized capabilities**: Certain Traits grant unique abilities not available through standard equipment, such as emergency thrusters, targeting computers, or environmental adaptation systems.

### Practical Context

| Scenario | No Traits (Baseline) | Multiple Traits Equipped |
| -------- | -------------------- | ------------------------ |
| Combat performance | Relies entirely on base stats and hardpoint loadout for effectiveness | Gains targeted bonuses that can turn the tide in specific combat scenarios |
| Specialization | Generalist vehicle with no particular strengths beyond raw numbers | Can be tailored to excel in dogfighting, long-range bombardment, stealth operations, etc. |
| Adaptability | Fixed capabilities determined by chassis design and equipment | Traits can be swapped or upgraded to evolve the vehicle's role over time |

### Trait Examples

- **Enhanced Gyroscopes**: +1 bonus to Dogfighting derived stat.
- **Reactive Plating**: Reduces incoming damage from explosive weapons by 1.
- **Targeting Computer**: +1 bonus to Gunnery and Ordinance checks when firing mounted weapons.
- **Emergency Thrusters**: Once per combat, allows the vehicle to make a free evasive maneuver at double normal Performance bonus.
- **Stealth Coating**: Makes the vehicle harder to detect, granting a bonus to Stunt Defense during ambush scenarios.

Traits are acquired through vehicle customization and represent long-term investment choices that define a vehicle's tactical identity alongside its primary stats and hardpoint configuration.

---

## Derived Stats

Vehicle derived stats combine crew member attributes (SA and skills) with vehicle primary stats (primarily Performance) to produce measurable combat capabilities. These calculations bridge the gap between character ability and vehicular performance, ensuring that both pilot skill and machine quality contribute meaningfully to outcomes.

**Important**: SA in all vehicle formulas refers to the **crew member's Situational Awareness** (calculated as Body + Mind + Spirit from character stats), not a property of the vehicle itself. Skills refer to the relevant character skill of the crew member operating that system. The game master determines which crew member contributes their values based on role assignment and current situation.

Derived stats are organized into three categories: **Maneuvering**, **Combat**, and **Defense**.

---

### Maneuvering

Maneuvering derived stats govern how effectively a vehicle can position itself in combat — executing turns, accelerations, and tactical movements to gain advantage over opponents. These checks primarily rely on the Pilot's SA and Piloting skill, combined with the vehicle's Performance rating.

#### Dogfighting

Dogfighting measures a vehicle's ability to engage in close-range aerial or orbital combat, where tight turns and rapid directional changes determine who holds the firing solution.

**Calculation:**

```
Dogfighting = SA + Piloting Skill + Performance + applicable Traits
```

The Pilot's **SA** provides baseline reaction speed, **Piloting Skill** represents trained maneuvering ability, and **Performance** reflects how responsive the vehicle is to pilot input. Applicable Traits (such as Enhanced Gyroscopes) may provide additional bonuses if they specifically reference Dogfighting or close-range maneuvering.

Dogfighting is used for:
- Close-range turning engagements where positional advantage determines who can fire effectively.
- Maintaining firing solutions on agile targets during rapid movement exchanges.
- Barrel rolls, splits, and other evasive maneuvers performed while tracking an opponent.

#### Strafing

Strafing measures a vehicle's ability to execute targeted approach runs — accelerating toward a target, delivering fire at optimal range, and disengaging before return fire can take effect.

**Calculation:**

```
Strafing = SA + Strafing Skill + Performance + applicable Traits
```

The Pilot's **SA** enables timing of the approach run, **Strafing Skill** represents trained execution of attack passes, and **Performance** determines acceleration and deceleration capability. Traits that enhance acceleration or targeting during movement may contribute additional bonuses.

Strafing is used for:
- Calculating the angle and timing of an attack pass against a stationary or slow-moving target.
- Coordinating multiple vehicles for synchronized strafing runs.
- Adjusting approach speed to match optimal weapon engagement ranges.

---

### Combat

Combat derived stats govern how effectively a vehicle can deliver damage through its weapons systems. These checks primarily rely on the Weapons Operator's SA and relevant skill (Gunnery, Melee, or Ordinance), combined with weapon-specific modifiers and the vehicle's Performance where applicable.

#### Gunnery

Gunnery measures accuracy when firing continuous-fire or rapid-cycling weapons such as beam rifles, vulcan cannons, and autocannons.

**Calculation:**

```
Gunnery = SA + Gunnery Skill + Accuracy (from weapon) + Traits
```

The Weapons Operator's **SA** determines tracking precision under pressure, **Gunnery Skill** represents trained proficiency with continuous-fire weapons, and **Accuracy** is a property of the specific weapon system being operated. Traits that enhance targeting or weapon stabilization may provide additional bonuses.

Gunnery is used for:
- Firing beam weapons, vulcan cannons, autocannons, and other sustained-fire systems.
- Tracking moving targets with continuous weapon fire.
- Suppressing enemy positions with volume of fire.

#### Melee

Melee measures the effectiveness of physical contact attacks performed by the vehicle itself — such as a mech striking with mounted blades, a ship ramming an opponent, or a ground vehicle shoving an obstacle aside.

**Calculation:**

```
Melee = SA + Melee Skill + Performance + Traits
```

The relevant crew member's **SA** (typically the Pilot for contact maneuvers) provides reaction timing, **Melee Skill** represents trained close-combat ability, and **Performance** reflects how forcefully the vehicle can execute physical attacks. Traits that enhance actuators or frame strength may contribute additional bonuses.

Melee is used for:
- Mech-to-mech hand-to-hand combat using actuator-carried weapons.
- Ship ramming maneuvers against opposing vessels.
- Physical shoving, grappling, or displacement of obstacles and enemy vehicles.

#### Ordinance

Ordinance measures accuracy when firing projectile-based weaponry such as missiles, torpedoes, rockets, and bombs — systems that require trajectory calculation and lead-time targeting rather than direct line-of-sight fire.

**Calculation:**

```
Ordinance = SA + Ordinance Skill + Accuracy (from weapon) + Traits
```

The Weapons Operator's **SA** enables assessment of target movement for predictive aiming, **Ordinance Skill** represents trained proficiency with projectile weapons, and **Accuracy** is a property of the specific ordnance system being deployed. Traits that enhance ballistic computation or missile guidance may provide additional bonuses.

Ordinance is used for:
- Firing missile pods, torpedo launchers, rocket batteries, and bomb drops.
- Targeting moving objects with trajectory-based attacks.
- Coordinated salvo attacks requiring precise timing and range estimation.

---

### Defense

Defense derived stats measure how effectively a vehicle can avoid taking damage through evasion, positioning, and reactive maneuvers. These checks primarily rely on the Pilot's SA and Piloting skill, combined with the vehicle's Performance rating. Defense values are specialized for different combat scenarios, reflecting that optimal evasion tactics vary depending on the threat type.

#### Break Defense

Break Defense is the baseline defensive value used against most standard attacks. It represents the vehicle's general evasive capability under normal combat conditions.

**Calculation:**

```
Break Defense = SA + Piloting Skill + Performance
```

The Pilot's **SA** enables threat perception and reaction timing, **Piloting Skill** represents trained evasion techniques, and **Performance** determines how quickly the vehicle can execute defensive maneuvers. This is the default defense value used when no specific scenario modifier applies.

Break Defense is used for:
- Standard evasive checks against incoming fire from most weapon types.
- Dodging attacks during general combat engagements where no specific tactical context favors a modified defense value.
- Baseline comparison for calculating Escape and Shoot Defense modifiers.

#### Escape Defense

Escape Defense represents the vehicle's ability to disengage from combat entirely — creating distance between itself and pursuing opponents through rapid acceleration or feint maneuvers.

**Calculation:**

```
Escape Defense = Break Defense + 2
```

This bonus reflects the tactical advantage of committing full attention to evasion without simultaneously tracking targets for return fire. A vehicle that stops firing and focuses solely on escape can push its evasive capability beyond normal limits.

Escape Defense is used for:
- Breaking away from combat and creating separation from pursuing enemies.
- Escaping from closing engagement ranges (such as transitioning from dogfight range to long-range).
- Fleeing the battlefield entirely when retreat becomes necessary.

#### Shoot Defense

Shoot Defense represents the vehicle's evasive capability while simultaneously tracking targets for return fire — a more demanding task than pure evasion since the pilot must balance defensive movement with offensive positioning.

**Calculation:**

```
Shoot Defense = Break Defense - 2
```

This penalty reflects the reduced maneuvering freedom when maintaining firing solutions on enemies. A vehicle that actively tracks and fires at opponents cannot execute the same range of evasive movements available to a purely escaping target.

Shoot Defense is used for:
- Dodging incoming fire while simultaneously tracking targets with weapon systems locked on.
- Maintaining defensive positioning during active shooting exchanges.
- Evasion checks when the vehicle has declared attacks against specific enemies in the current round.

#### Stunt Defense

Stunt Defense measures the vehicle's ability to execute unconventional maneuvers — such as flying through narrow gaps, performing barrel rolls while inverted, or using terrain for cover in unexpected ways. Unlike other defense values, Stunt Defense does not include Performance, reflecting that stunt maneuvers rely on raw pilot skill rather than machine capability.

**Calculation:**

```
Stunt Defense = SA + Piloting Skill
```

The Pilot's **SA** provides the spatial awareness necessary to judge distances and timing for unconventional movements, while **Piloting Skill** represents trained ability to execute complex maneuvers beyond standard combat maneuvers. The absence of Performance means that even modestly-equipped vehicles can perform impressive stunts in skilled hands — though higher-Performance vehicles may benefit from Traits that specifically enhance stunt capability.

Stunt Defense is used for:
- Executing barrel rolls, loops, and other flashy maneuvers to confuse targeting systems.
- Navigating through tight spaces (asteroid fields, urban canyons, narrow mountain passes).
- Using terrain features for cover in ways that exceed standard evasion tactics.

---

## Vehicle Examples

The following reference tables illustrate how vehicle stats vary across three representative vehicle types: a **Mech** (close-range combat platform), a **Fighter** (agile aerial combatant), and a **Capital Ship** (heavy fire support vessel). These examples demonstrate the trade-offs between Armor, Performance, Structure, Crew complexity, Hardpoint diversity, and Cargo capacity that define each vehicle class.

### Mech

Mechs are pilot-worn power frames optimized for close-quarters combat, combining moderate armor with high maneuverability and actuator-based weapon delivery. They excel in tight engagements where Physical contact and rapid repositioning determine victory.

| Stat | Value |
| ---- | ----- |
| **Armor** | 5 |
| **Performance** | +2 |
| **Structure** | 4 |
| **Crew** | 1 Pilot |
| **Hardpoints** | 2 Actuators (hands carrying 1 beam rifle + 1 shield); 3 Accessory mounts (1 beam saber, 2 beam rifle reloads); 1 Integrated mount (Vulcan cannon); 2 Engine mounts (Nuclear reactor, Jetpack) |
| **Cargo** | 50 cubes |

The mech's high Performance (+2) and moderate Armor (5) reflect its role as an agile frontline combatant. With only a single crew member (the Pilot), all derived stats depend on that pilot's SA and skill diversity. The actuator hardpoints provide exceptional melee capability, while the integrated vulcan cannon offers reliable ranged firepower without consuming flexible mount slots.

### Fighter

Fighters are lightweight aerial craft designed for speed, agility, and precision strikes. They sacrifice armor and structure in exchange for superior Performance and maneuverability, relying on evasion rather than durability to survive combat.

| Stat | Value |
| ---- | ----- |
| **Armor** | 3 |
| **Performance** | +3 |
| **Structure** | 2 |
| **Crew** | 1 Pilot |
| **Hardpoints** | 1 Main mount (Beam cannon); 1 Flex mount (Shield generator); 1 Heavy mount (Missile pod); 1 Engine mount (Fusion engines) |
| **Cargo** | 20 cubes |

The fighter maximizes Performance (+3) at the cost of Structure (2), making it highly effective in dogfighting scenarios but vulnerable to sustained damage. With only four hardpoints total, loadout choices must be carefully balanced between offense, defense, and propulsion. The single-pilot crew means all systems rely on one person's SA and trained skills.

### Capital Ship

Capital ships are large combat vessels that bring overwhelming firepower to bear through extensive hardpoint arrays and heavy armor. They accept low Performance in exchange for superior protection, structure, and the ability to carry diverse weapon suites operated by specialized crews.

| Stat | Value |
| ---- | ----- |
| **Armor** | 9 |
| **Performance** | -1 |
| **Structure** | 5 |
| **Crew** | 1 Captain, 1 Pilot, 1 Weapons Engineer, 9 Various (12 total) |
| **Hardpoints** | 4 Main mounts (Beam turrets); 4 Heavy mounts (Missile pods); 2 Flex mounts (Sensor pod, Anti-missile defense system); 3 Accessory mounts (Shield generators); 9 Engine mounts (Fusion engines) |
| **Cargo** | 10,000 cubes |

The capital ship's high Armor (9) and massive hardpoint complement (22 total) allow it to dominate firepower exchanges. However, its negative Performance (-1) penalizes maneuvering and melee checks, making the ship most effective in sustained long-range engagements where positioning is established early and maintained through crew coordination rather than rapid movement. The large crew enables specialized roles: the Pilot handles Break Defense while the Weapons Engineer manages Gunnery and Ordinance independently.