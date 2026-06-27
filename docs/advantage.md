# Advantage and Disadvantage

Advantage and Disadvantage are core probability modifiers in Hardpoint that shape the outcome of virtually every contested roll. Rather than applying flat numerical bonuses or penalties, they introduce additional dice into a roll and select either the highest (Advantage) or lowest (Disadvantage) result. This system creates meaningful tactical depth: positioning, environmental conditions, equipment quality, and target behavior all compound to shift odds in measurable ways without breaking the underlying d6 resolution framework.

## Mechanics

Advantage and Disadvantage modify a roll by adding extra d6 dice alongside the base 1d6 roll. Each instance of Advantage or Disadvantage contributes one additional die:

- **Advantage**: Roll an extra 1d6 per instance alongside your base 1d6, then take the **highest** value among all rolled dice.
- **Disadvantage**: Roll an extra 1d6 per instance alongside your base 1d6, then take the **lowest** value among all rolled dice.

This mechanic preserves the familiar d6 result range (1-6) while shifting probability distribution toward higher or lower outcomes depending on whether Advantage or Disadvantage is active. Unlike flat modifiers that directly add to or subtract from a roll result, Advantage and Disadvantage create non-linear probability curves — small numbers of instances produce meaningful shifts, and stacking many instances produces increasingly extreme results.

---

## Stacking and Cancellation

Advantage and Disadvantage operate on a net basis: they cancel each other out 1-for-1, and any remaining instances stack additively. For example, a character with 4 instances of Advantage and 1 instance of Disadvantage has a net Advantage of 3, meaning their roll consists of the base 1d6 plus 3 additional d6 dice, taking the highest value among all four dice rolled.

This cancellation system allows multiple sources of Advantage and Disadvantage to coexist cleanly without requiring complex tracking of individual modifiers. The game state simply reduces opposing effects until a single net value remains — either Advantage N, Disadvantage N, or neutral (no modifier). Players should evaluate each situation for all applicable sources and calculate the net total before rolling.

---

## What Influences Advantage

Numerous factors in Hardpoint can grant Advantage or Disadvantage on rolls. The most common include:

- **Positioning and terrain**: Holding high ground, having cover superiority, flanking a target, or occupying advantageous elevation grants Advantage. Conversely, firing uphill without cover, being outflanked, or fighting from low ground imposes Disadvantage.
- **Target conditions**: Attacking immobilized, stunned, or distracted targets grants Advantage. Engaging camouflaged, evasive, or actively maneuvering targets imposes Disadvantage.
- **Equipment bonuses**: Targeting computers, stabilized weapon mounts, enhanced sensor suites, and rangefinders can grant Advantage on relevant rolls. Damaged, degraded, or improvised equipment may impose Disadvantage.
- **Scale differences**: Targeting creatures of a different scale than your own imposes Disadvantage per step of scale difference. For example, firing a Personal-scale weapon at a Capital-scale target incurs 2 Disadvantage (Capital → Large → Personal). This reflects the practical difficulty of hitting much smaller or much larger targets accurately.
- **Environmental factors**: Weather conditions (rain, fog, dust storms), visibility impairments (smoke, darkness, terrain occlusion), and sensor interference (electronic warfare, jamming) can impose Disadvantage on targeting rolls. Clear conditions with optimal visibility may grant Advantage.

---

## Practical Examples

The following table illustrates common scenarios and how Advantage/Disadvantage modifies outcomes:

| Scenario | Low (Disadvantage) | Neutral (No Modifier) | High (Advantage) |
| -------- | ------------------ | --------------------- | ---------------- |
| **Terrain** | Firing uphill through smoke or heavy terrain occlusion; target is partially obscured and elevation works against you | Engaging on flat, open terrain with clear line-of-sight at similar elevation | Firing from high ground onto a visible target in open terrain; full positional superiority |
| **Target Behavior** | Target is highly evasive, performing unpredictable maneuvering patterns while maintaining cover | Target is moving at standard pace with no deliberate evasion or positioning tactics | Target is stationary, stunned, or otherwise immobilized; no active countermeasures detected |
| **Equipment & Sensors** | Sensors are jammed, suppressed, or damaged; firing solutions computed manually without targeting assistance | Standard firing solution using baseline equipment with no enhancements or degradation | Targeting computer locked-on; stabilized mount reducing weapon sway; enhanced sensors providing real-time tracking data |

---

## Range Analysis

The mathematical impact of Advantage and Disadvantage is substantial, even at a single instance. The base roll in Hardpoint uses 1d6, producing results from 1 to 6 with an average (expected value) of approximately **3.5**.

- **Advantage 1** adds 1d6 and takes the higher result, effectively raising the average result from ~3.5 to approximately **4.9**. This represents a significant shift toward favorable outcomes without guaranteeing success.
- **Disadvantage 1** adds 1d6 and takes the lower result, effectively dropping the average result from ~3.5 to approximately **2.1**. This creates a meaningful penalty that makes success substantially harder to achieve.

Multiple stacked instances further skew probability in extreme directions. With Advantage 2 (rolling 3d6 total, taking highest), the average climbs toward ~5.4. With Disadvantage 2, it drops toward ~1.7. These compounding effects make stacking scenarios — such as combining high ground with targeting lock-on while engaging an immobilized target at favorable scale — incredibly powerful, and conversely make stacked penalties devastating to overcome.

This non-linear scaling ensures that Advantage and Disadvantage remain impactful across the full range of possible values, rewarding players who actively manage positioning, equipment, and Instinct to tilt probability in their favor.
