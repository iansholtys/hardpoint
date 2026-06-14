# Scale

Hardpoint uses a scale system to abstract and classify the relative sizes of entities — from individual characters to colossal space stations. Scale determines how damage is calculated in cross-size combat, applies hit disadvantage penalties for targeting significantly smaller opponents, and provides a consistent framework for comparing vehicles across orders of magnitude. There are four defined scales: **Personal**, **Vehicle**, **Capital**, and **Supermassive**.

When entities of different scales engage in combat, damage modifiers apply. A weapon attacking a target one scale larger deals half damage (before armor calculation), while a weapon attacking a target one scale smaller deals double damage. Engaging targets two scales away is generally impractical — Personal-scale weapons are unlikely to penetrate Capital-scale armor, and large entities incur cumulative hit disadvantage when targeting significantly smaller opponents. Specifically, each scale of difference imposes one level of disadvantage: attacking one scale smaller incurs -1 disadvantage, and attacking two scales smaller incurs -2 disadvantage.

## What Scale Influences

Scale affects the following combat and mechanical systems:

- **Damage calculation**: Cross-scale attacks apply multiplicative damage modifiers (half damage when attacking larger targets, double damage when attacking smaller targets).
- **Hit disadvantage**: Attacking targets one or more scales smaller imposes cumulative disadvantage on hit checks.
- **Armor effectiveness**: Larger scales typically feature proportionally thicker armor, making cross-scale engagements beyond one tier increasingly impractical.
- **Size tier classification**: Each scale contains a 0-9 Size tier system that further refines relative size within the scale boundary.

---

## Personal Scale

Personal Scale encompasses entities ranging from less than 1 meter to approximately 5 meters in height. This scale includes all humanoid characters, small animals, power armor, and compact mechanized suits. The Personal Scale is the baseline for character combat and serves as the reference point for calculating cross-scale damage modifiers.

### Practical Examples

| Size Tier | Size Range | Real-World Examples | Pop-Culture Examples |
| --------- | ---------- | ------------------- | -------------------- |
| P0 | < 1 m | Small cats, dogs | Child-sized droids (R2-D2 at 0.96m) |
| P1 | ~1 m | Halflings, toddlers | C-3PO protocol droid variant |
| P2 | 1 - 1.5 m | Children, small adults | Youth, diminutive humanoids |
| P3 | 1.5 - 2 m | Average adult human | Standard humanoid characters |
| P4 | 2 - 2.5 m | Half-giants, humans in exoskeleton armor | Powered assault suits |
| P5 | 2.5 - 3 m | Heavy powered armor | Elemental Battle Armor (Mechwarrior) |
| P6 | 3 - 3.5 m | Light mech suits | Early-model power frames |
| P7 | 3.5 - 4 m | Medium mech suits | Reinforced combat exoskeletons |
| P8 | 4 - 4.5 m | Heavy mech suits | Prototype mobile armor |
| P9 | ~5 m | Extra-heavy mech suits | AMS-01 Gundam (5m) |

---

## Vehicle Scale

Vehicle Scale covers entities from approximately 5 meters to 100 meters in length or height. This scale includes ground vehicles, aircraft, tanks, small watercraft, mechs of conventional size, and light attack craft. Most standard vehicular combat in Hardpoint occurs within this scale.

### Practical Examples

| Size Tier | Size Range | Real-World Examples | Pop-Culture Examples |
| --------- | ---------- | ------------------- | -------------------- |
| V0 | < 5 m | Canoes, rafts, small boats | Speeder bikes |
| V1 | ~5 m | Cars, vans, trucks, ATVs | Land speeders |
| V2 | 5 - 10 m | SUVs, light trucks, jeeps | TIE Fighter (3.8m to 9.8m variants) |
| V3 | 10 - 15 m | Buses, medium trucks, small aircraft | X-Wing starfighter (12m wingspan) |
| V4 | 15 - 20 m | Semi-trucks, light fighter aircraft (F-22 at 14.3m), small mechs | RX-78 Gundam (18m) |
| V5 | 20 - 30 m | Heavy fighter craft, large mechs | RA/MC-31 Gundam Mk-II (23.2m) |
| V6 | 30 - 50 m | B-1/B-2 bombers, large transport aircraft | Big Zan (47m) |
| V7 | 50 - 70 m | Jumbo jets (Boeing 747 at 70.6m), small ships | Gundam Sengoku mechs |
| V8 | 70 - 90 m | Cargo ships | Colossal mech suits |
| V9 | ~100 m | Large tankers | MS Force combined armor |

---

## Capital Scale

Capital Scale encompasses entities from approximately 100 meters to 20 kilometers in length. This scale includes capital warships, transports, frigates, cruisers, aircraft carriers, and space stations. Combat at this scale typically involves naval engagements, orbital warfare, and large-scale fleet operations.

### Practical Examples

| Size Tier | Size Range | Real-World Examples | Pop-Culture Examples |
| --------- | ---------- | ------------------- | -------------------- |
| C0 | < 120 m | Corvettes, patrol boats | - |
| C1 | 120 - 150 m | Modern frigate-class ships (Oliver Hazard Perry-class at ~132m) | GR/SN fri-gate class cruisers |
| C2 | 150 - 200 m | Modern destroyer-class ships (Arleigh Burke-class at ~158m) | Light escort vessels |
| C3 | 200 - 250 m | Light cruisers, large destroyers | ISV frigates |
| C4 | 250 - 300 m | Heavy cruisers, small carriers, modern aircraft carriers (USS Enterprise at ~333m) | White Base (Gundam, 281m) |
| C5 | 300 - 500 m | Large US aircraft carriers (Nimitz-class at 333m), battlecruisers | Andorian cruiser class |
| C6 | 500 - 800 m | Battleship-class vessels, large dreadnoughts | Battlestar Galactica (2.9km compressed to scale) |
| C7 | 800 - 1500 m | Dreadnought-class warships, super-carriers | USS Enterprise-A (~435m scaling up) |
| C8 | 1.5 - 5 km | Ship-of-the-line class vessels, large space stations | ISV hulk freighters |
| C9 | ~5 - 20 km | Mega-structures, small moons | Space station segments |

---

## Supermassive Scale

Supermassive Scale covers entities exceeding approximately 20 kilometers in length. This scale includes massive warships, orbital installations, and megastructures that serve as fleet anchors or strategic landmarks. Combat at this scale is typically reserved for large fleet engagements, planetary defense operations, and cosmic-level conflicts.

### Practical Examples

| Size Tier | Size Range | Real-World Equivalents | Pop-Culture Examples |
| --------- | ---------- | ---------------------- | -------------------- |
| S0 | 20 - 35 km | Small mountains, large bridges | Executor-class Star Dreadnought (29km) |
| S1 | 35 - 60 km | Mountain ranges | Tigras-class Super Star Destroyer |
| S2 | 60 - 100 km | Large mountain ranges | Mega-class Star Destroyer (60km) |
| S3 | 100 - 150 km | Small countries (by length) | First Death Star prototype variants |
| S4 | 150 - 250 km | Medium countries | Imperial super-dreadnoughts |
| S5 | 250+ km | Large countries, continental segments | Death Star |

---

# Size

Size is a numerical rating from **0** to **9** that denotes an entity's relative position within its Scale. A Size of 0 indicates the entity is smaller than typical for its Scale but still classified within it. Size tiers provide granular differentiation between entities sharing the same Scale, enabling more precise comparisons and ensuring that scale-based modifiers remain proportionally balanced.

## What Size Influences

Size provides additional granularity beyond base Scale classification:

- **Relative size comparison**: Allows direct comparison of entities within the same Scale without resorting to fractional damage modifiers.
- **Hit profile estimation**: Larger Size tiers generally present bigger targets, which may modify evasion or hit thresholds in certain systems.
- **Capacity and load estimation**: Higher Size tiers correlate with greater internal volume, affecting cargo capacity, crew complement, and weapon emplacements.
- **Scale boundary classification**: A Size of 0 indicates the entity is on the lower end of its Scale but does not drop to the next smaller Scale for mechanical purposes.

### Range Analysis

Size ranges from **0** (smaller than typical for the scale) through **9** (near the maximum size before crossing into the next scale). Each increment represents a roughly proportional step within the scale's boundaries, though absolute measurements vary significantly between scales due to their different base magnitudes. An entity at Size 9 in one scale is directly comparable in relative position to an entity at Size 9 in another scale — both are near the upper limit of their respective classifications.
