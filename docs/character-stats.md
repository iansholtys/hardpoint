# Character Stats

Hardpoint is designed around a minimal set of primary stats, inspired by systems such as Warbirds RPG. By keeping individual values low, they can be combined into the primary derived stat — **Situational Awareness** (SA) — which is heavily used in vehicular combat and serves as one of the core design pillars of the system. SA is calculated by adding a character's Body, Mind, and Spirit together, which should total **+1 at character creation**.

## Stat Value Scale

All stats in Hardpoint use a modifier scale ranging from -3 to +3. This compact range ensures that combined values remain manageable while still allowing meaningful differentiation between characters. The following table describes what each value represents:

| Value | Description |
| ----- | ----------- |
| -3    | Exceptionally crippled, hospitalized, or paralyzed. Denotes an extreme negative condition. |
| -2    | A severe disability or handicap that significantly impairs function. |
| -1    | Below average. The character lacks proficiency in this area compared to most peers. |
| 0     | Average. The character is unremarkable but fully functional in this area. |
| +1    | Above average. The character is reasonably skilled and reliably competent. |
| +2    | Exceptional. The character tends toward mastery of the craft, standing out among peers. |
| +3    | One of the best in existence. May require modifications or extraordinary training. Practically superhuman. |

### Character Creation Constraint

At character creation, the sum of Body, Mind, and Spirit must equal **+1**. This constraint forces meaningful trade-offs: a character with exceptional physical prowess (+2 Body) must compensate with weaker mental or spiritual attributes, and vice versa. No stat may exceed +3 or drop below -3 at any time.

---

## Body

Body represents a character's physical prowess, condensed into a single statistic. It measures overall fitness, bodily control, stamina, and raw physical strength.

### What Body Influences

Body is the primary stat for all physically demanding actions, including:

- **Melee combat**: Determines damage output, melee attack checks, and resistance to being disarmed or knocked down.
- **Physical endurance**: Affects how long a character can sustain strenuous activity, resist fatigue, and push through injury.
- **Athletic feats**: Governs checks for climbing, jumping, swimming, and other tests of physical agility and coordination.
- **Resistance to physical trauma**: Modifies damage taken from blunt force, falls, environmental hazards, and similar threats.

### Practical Examples

| Scenario | Low Body (-2 to -1) | High Body (+2 to +3) |
| -------- | ------------------- | -------------------- |
| Melee combat | Struggles to land hits; easily overwhelmed in close quarters | Delivers devastating blows; can hold their own against multiple opponents |
| Endurance task | Fatigues quickly during prolonged physical exertion | Can march, fight, or labor for extended periods with minimal degradation |
| Carrying capacity | Limited to light loads; struggles with heavy equipment | Capable of hauling heavy gear, dragging wounded allies, and operating cumbersome machinery |

### Contribution to Situational Awareness

Body contributes directly to the SA calculation. A physically robust character brings sharper reflexes and faster reaction times to vehicular combat, translating raw athleticism into battlefield awareness. Characters who invest heavily in Body will find their SA benefits from quick physical responses — such as reacting to sudden maneuvers or maintaining control under physical strain.

---

## Mind

Mind represents a character's intellectual capacity, condensed into a single statistic. It measures general intelligence, analytical thinking, technical aptitude, and the ability to adapt quickly to new information.

### What Mind Influences

Mind is the primary stat for all cognitive and technical actions, including:

- **Technical operations**: Governs checks for repairing vehicles, operating complex machinery, hacking systems, and managing onboard electronics.
- **Strategic analysis**: Affects the ability to assess battlefield conditions, identify weaknesses in enemy formations, and formulate effective tactics.
- **Knowledge-based tasks**: Modifies checks for research, translation, identification of unknown technology, and recall of stored information.
- **Problem-solving under pressure**: Determines how quickly a character can devise solutions when faced with unexpected complications or system failures.

### Practical Examples

| Scenario | Low Mind (-2 to -1) | High Mind (+2 to +3) |
| -------- | ------------------- | -------------------- |
| Vehicle repair | Struggles with basic diagnostics; often misidentifies the root cause of malfunctions | Rapidly diagnoses and repairs complex systems; can jury-rig solutions from limited resources |
| Tactical assessment | Misses critical details in the battlefield environment; makes poor strategic decisions | Quickly identifies enemy weaknesses, predicts movements, and formulates counter-strategies |
| Technical operation | Requires assistance with advanced equipment; prone to operational errors | Operates sophisticated systems with ease; can multitask across multiple consoles simultaneously |

### Contribution to Situational Awareness

Mind contributes directly to the SA calculation. A sharp intellect enables a character to process battlefield information more effectively, translating raw data into actionable insights. Characters who invest heavily in Mind will find their SA benefits from superior pattern recognition, threat assessment, and predictive analysis during vehicular combat.

---

## Spirit

Spirit represents a character's force of will, condensed into a single statistic. It measures mental resilience, leadership capability, emotional stability under pressure, and the determination to persevere when circumstances grow dire.

### What Spirit Influences

Spirit is the primary stat for all actions requiring mental fortitude and social influence, including:

- **Stress resistance**: Determines how well a character handles fear, trauma, shock, and overwhelming circumstances.
- **Leadership and command**: Affects checks for issuing orders, inspiring allies, coordinating squad actions, and maintaining morale.
- **Willpower feats**: Modifies checks for resisting interrogation, breaking free of mental influence, and pushing past exhaustion or injury through sheer determination.
- **Intuition and perception**: Governs a character's ability to sense danger, read body language, detect deception, and trust their instincts in uncertain situations.

### Practical Examples

| Scenario | Low Spirit (-2 to -1) | High Spirit (+2 to +3) |
| -------- | ------------------- | -------------------- |
| Under fire | Quickly becomes overwhelmed; may freeze or act recklessly under heavy pressure | Remains calm and focused even in chaotic combat situations, making clear decisions |
| Leading a squad | Orders are easily ignored; allies lose confidence during setbacks | Inspires loyalty and determination; can rally demoralized troops back into effective action |
| Enduring hardship | Breaks down under prolonged stress or repeated failures | Presses forward despite mounting odds, often becoming the anchor for others around them |

### Contribution to Situational Awareness

Spirit contributes directly to the SA calculation. A strong will provides an intuitive grasp of the battlefield, allowing a character to sense threats and opportunities before they fully materialize. Characters who invest heavily in Spirit will find their SA benefits from heightened awareness, sharper instincts, and the ability to maintain clear focus even when surrounded by chaos.

---

## Derived Stats

Derived stats are secondary characteristics calculated from a character's primary stats (Body, Mind, Spirit), skills, and equipment. Unlike primary stats — which are fixed at creation subject to the +1 sum constraint — derived stats reflect how those base attributes combine with trained abilities and gear to produce measurable combat capabilities. Hardpoint defines four derived stats:

- **Situational Awareness (SA)**: The sum of all three primary stats, governing battlefield perception and reaction speed in vehicular combat.
- **Defense**: Measures a character's ability to avoid incoming attacks through physical reflexes and trained movement.
- **Resistance**: Determines how well a character withstands damage, environmental effects, and mental pressure.
- **Health**: Represents total hit points — the amount of damage a character can absorb before being incapacitated.

Derived stats shift as characters acquire skills, equipment, or modifications, making them more flexible than primary attributes while remaining grounded in the same core statistical framework.

---

### Situational Awareness (SA)

**Situational Awareness**, abbreviated as **SA**, is the most important derived statistic in Hardpoint. It represents a character's overall capacity to perceive, understand, and respond to their environment in real time — making it the cornerstone of vehicular combat mechanics.

#### Calculation

SA is calculated by summing all three primary stats:

```
SA = Body + Mind + Spirit
```

Since the total of Body, Mind, and Spirit must equal **+1** at character creation, all newly created characters begin with an SA of **+1**. As characters gain modifications, suffer injuries, or acquire enhancements that alter their primary stats, their SA will shift accordingly.

#### Role in Vehicular Combat

Situational Awareness is the primary modifier used in vehicular combat for the following reasons:

- **Target acquisition**: SA determines how quickly a character spots and locks onto enemy targets while piloting or operating weapon systems.
- **Evasion and maneuvering**: Modifies checks to dodge incoming fire, predict enemy movements, and execute evasive maneuvers under pressure.
- **Combat coordination**: Affects the ability to coordinate with wingmen, call in support, and maintain awareness of multiple threats simultaneously.
- **System management**: Governs how effectively a character monitors onboard sensors, manages damage control, and prioritizes targets during active engagement.

In essence, SA captures the combination of physical reflexes (Body), analytical processing (Mind), and intuitive focus (Spirit) that every effective combatant needs to survive in the heat of battle. A high SA value means the character can perceive more of their surroundings, process threats faster, and react with greater precision — regardless of which individual stat contributed most to that total.

#### Balancing Considerations

Because SA is the sum of all three stats, players must consider how their primary stat distribution affects both specialized performance and overall awareness:

- **Specialized characters** (e.g., +2 Body / 0 Mind / -1 Spirit) maintain a solid SA of +1 but excel in specific domains while remaining average or below in others.
- **Well-rounded characters** (e.g., +1 Body / +1 Mind / 0 Spirit) also achieve SA of +1 but distribute their competence more evenly, making them reliable across a broader range of challenges.

This design ensures that no character is truly "optimized" for SA at the expense of specialization — every build starts with the same baseline awareness, rewarding players for choosing the strengths that best fit their envisioned role.

---

### Defense

Defense measures a character's ability to avoid incoming attacks through quick reflexes, trained movement, and positional awareness. It represents how effectively a character can dodge, weave, or otherwise put themselves out of harm's way when under fire.

#### Calculation

Defense is calculated as follows:

```
Defense = 3 + Body + Relevant Skill (Defaults to Athletics outside of combat, during combat would be Close/Mid/Far based on positioning against enemy)
```

The base value of **3** represents average situational reflexes — the natural ability any functional human has to flinch, duck, or step aside from an obvious threat. Body adds raw physical agility and reaction speed, while Athletics is a trained skill representing deliberate combat movement, footwork, and evasion techniques.

#### What Defense Influences

Defense is used in all defensive checks where a character attempts to avoid being hit, including:

- **Melee defense**: Modifies checks to dodge swings, parry attacks, or maintain advantageous positioning against close-combat opponents.
- **Evasion against projectiles**: Affects the ability to duck behind cover, sidestep incoming fire, and break line-of-sight with ranged attackers.
- **Resisting grapples and holds**: Determines how well a character breaks free from grabs, clinches, and controlling maneuvers.
- **Environmental avoidance**: Modifies checks to dodge falling debris, slipping on hazards, or maintaining balance during vehicle movement.

#### Practical Examples

| Scenario | Low Defense (1-2) | High Defense (4-5) |
| -------- | ----------------- | ------------------ |
| Melee combat | Easily caught by opponents' attacks; struggles to maintain distance | Fluidly dodges and weaves through enemy strikes; controls engagement range |
| Under ranged fire | Takes repeated hits while advancing; cover is often poorly timed | Times movements between bursts; uses terrain efficiently to minimize exposure |
| Grapple attempt | Quickly overpowered once an opponent closes in | Twists free from grabs; counters with positional advantages |

#### Range Analysis

Defense can range from an absolute minimum of **0** (requiring Body -3, which only occurs in injured/degraded states) to a maximum of **5** (at Body +2, Athletics max). At character creation with valid stats (Body between -1 and +2), the practical floor is approximately **2** at Body -1 with no Athletics training. Characters who invest heavily in both physical attributes and combat training will find themselves remarkably difficult to hit, while those focused on mental or spiritual development may need to rely more on cover and allies for protection.

---

### Resistance

Resistance determines how well a character withstands damage, environmental effects, mental pressure, and pain. It represents toughness in its broadest sense — not just the ability to absorb a blow without flinching, but also the capacity to endure harsh conditions, resist fear, and keep functioning under duress.

#### Calculation

Resistance is calculated as follows:

```
Resistance = Spirit + Armor (Equipment)
```

Spirit contributes mental fortitude and pain tolerance — the will to ignore discomfort and press forward. Armor represents physical protection derived from equipment such as body armor, environmental suits, or reinforced clothing. Unlike other derived stats, Resistance has a significant **equipment dependency**, meaning it can be substantially improved through loadout choices even if Spirit is modest.

#### What Resistance Influences

Resistance is used in all checks where a character must endure or mitigate harmful effects, including:

- **Damage reduction**: Modifies the severity of damage taken from weapons, explosions, and impacts. Higher Resistance means attacks are less likely to knock a character off balance or disable them.
- **Resisting shock and pressure**: Affects checks against concussive force, crushing weight, and sudden impacts (such as vehicle collisions or falling debris).
- **Enduring harsh environments**: Determines how well a character withstands extreme temperatures, altitude, radiation, toxic atmospheres, and similar environmental hazards.
- **Resisting fear and intimidation**: Modifies checks to maintain morale under heavy fire, resist psychological warfare, and push past the effects of trauma or shock.

#### Practical Examples

| Scenario | Low Resistance (0-1) | High Resistance (3-4) |
| -------- | ------------------- | -------------------- |
| Taking a hit | Wincing at impacts; even glancing blows sap focus and stamina | Shrugs off damage that would stagger others; continues fighting through wounds |
| Extreme environment | Quickly suffers from cold, heat, or altitude; requires frequent rest periods | Operates comfortably in harsh conditions with minimal gear degradation to performance |
| Under intimidation | Easily shaken by threats; may hesitate or panic when pressured | Remains unfazed by fear tactics; uses opponent's pressure as motivation |

#### Range Analysis

Resistance has no fixed upper bound due to equipment scaling. At character creation, Spirit ranges from **-1** to **+2**, and base Armor (no protective gear) is **0**. A lightly armored character with low Spirit might have a Resistance of **-1**, while a heavily armored veteran with high Spirit can easily reach **4-5** or higher depending on available armor tiers. This equipment dependency makes Resistance the most flexible derived stat — characters who invest in quality protection can dramatically improve their survivability without altering their primary stats.

---

### Health

Health represents a character's total hit points — the amount of damage they can absorb before being incapacitated or killed. It measures raw durability, combining physical toughness with the will to keep fighting when wounded. A character is tracked by their current Health during combat, and reaching **0 Health** means the character is knocked out or dying.

#### Calculation

Health is calculated as follows:

```
Health = 3 + Body + Spirit
```

The base value of **3** represents the average human's baseline vitality — enough to withstand a moderate amount of damage before collapsing. Both **Body** and **Spirit** contribute to Health for complementary reasons: Body provides physical resilience (thicker muscle, denser bones, better circulation), while Spirit contributes mental endurance (the will to keep moving when injured, refusing to give up, pushing through pain).

#### What Health Influences

Health governs survivability in all combat and endurance scenarios:

- **Damage tracking**: Each hit a character takes reduces their current Health. When Health reaches 0, the character is incapacitated (knocked unconscious or dying, depending on circumstances).
- **Endurance over extended engagements**: Characters with higher Health can sustain prolonged fights, absorbing multiple hits before becoming a liability to their team.
- **Recovery threshold**: Health determines how much damage a character must absorb before breaking. A high-Health character can trade blows more freely, while a low-Health character must prioritize defense and hit-and-run tactics.
- **Environmental strain**: Harsh conditions that drain stamina or inflict cumulative damage (extreme cold, exhaustion, radiation exposure) are measured against Health, making it relevant outside of direct combat as well.

#### Practical Examples

| Scenario | Low Health (2-3 HP) | High Health (5-6 HP) |
| -------- | ------------------- | -------------------- |
| Firefight | Must avoid nearly all damage; one or two solid hits will drop them | Can trade several blows and remain in the fight; serves as frontline anchor |
| Prolonged mission | Exhaustion and minor injuries quickly drain remaining capacity | Pushes through fatigue and scrapes that would end others' missions early |
| Rescue operation | Vulnerable to collateral damage; must be protected by squadmates | Can take a hit for an ally or push through a hazard to complete the objective |

#### Range Analysis

Health ranges from a minimum of **3** at creation (e.g., Body -1, Spirit 0 or similar valid distributions) to a maximum of **7** for extreme builds (Body +2, Spirit +2, requiring Mind -1). At character creation, where Body + Mind + Spirit = +1, realistic Health values fall between **3** and **5** for balanced builds. Reaching the maximum of 7 requires sacrificing Mind to -1 — a trade-off that favors brute endurance over technical aptitude.