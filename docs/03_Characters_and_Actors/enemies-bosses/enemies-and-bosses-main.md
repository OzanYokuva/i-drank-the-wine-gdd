# Enemies and Bosses - Master Design Document

**Game:** I Drank The Wine: Inheritance  
**Document Type:** Enemy & Boss System Design  
**Version:** 1.0  
**Last Updated:** January 16, 2025  
**Status:** Foundation Complete

---

## 📋 Document Overview

This master document defines the enemy classification system, behavioral patterns, and design templates for all enemies and bosses in "I Drank The Wine: Inheritance". 

**This document contains:**
- Design philosophy and core principles
- Enemy class definitions and tier system
- Boss category definitions
- Templates for creating new enemies/bosses
- Spawn and encounter guidelines
- Difficulty scaling systems

**City-specific enemy variants are documented separately.**

---

## 🎯 Enemy Design Philosophy

### Core Principles

| Principle | Description |
|-----------|-------------|
| **Class = Behavior** | Enemy classes determine attack patterns, AI behavior, and combat role |
| **Tier = Power** | Higher tiers add abilities and complexity, not just stat increases |
| **City = Appearance** | Visual design changes per location; behavior remains consistent |
| **Readability First** | Players instantly recognize enemy type from silhouette and animation |
| **Fair Challenge** | Every attack is telegraphed; every death is the player's fault |

### Design Goals

1. **Teach Through Combat** - Each enemy type teaches a specific combat skill
2. **Escalating Complexity** - New mechanics introduced gradually
3. **Memorable Encounters** - Bosses should be discussed and remembered
4. **Satisfying to Fight** - Even fodder enemies should feel good to defeat

### Enemy Role Distribution

```
Standard Enemies (70% of encounters)
├── H2H Enemies ────────── Frontline pressure, combo fodder
├── Ranged Enemies ─────── Harassment, force movement
└── Melee Weapon Enemies ─ Damage threat, requires respect

Elite Encounters (20% of encounters)
├── Tier 3 Enemies ─────── Mini-challenge within stages
└── Tricksters ─────────── Gimmick encounters, pattern breakers

Boss Encounters (10% of encounters)
├── Mini-Bosses ────────── Stage checkpoints, skill tests
├── Main Bosses ────────── City climax, full mastery test
└── Special Guests ─────── Bonus content, unique rewards
```

---

## 📊 Tier System

All standard enemy classes use a 3-tier system that scales both power and complexity.

### Tier Overview

| Tier | Name | HP | Damage | Abilities | AI Complexity |
|------|------|-----|--------|-----------|---------------|
| **Tier 1** | Basic | 1.0x | Low | Basic attacks only | Simple, reactive |
| **Tier 2** | Advanced | 1.5x | Medium | +1 special ability | Moderate, proactive |
| **Tier 3** | Elite | 2.0x | High | +2 special abilities | Complex, adaptive |

### Tier Progression Rules

**Tier 1 → Tier 2 Additions:**
- One new offensive ability (sprint attack, throw, etc.)
- Improved defensive behavior (blocking, evasion)
- Faster recovery between actions
- Higher aggression level

**Tier 2 → Tier 3 Additions:**
- Second special ability
- Counter-attack capability
- Adaptive AI (responds to player patterns)
- Can chain abilities together
- Acts as "mini-elite" encounter

### Tier Appearance Guidelines

| Tier | Visual Distinction |
|------|-------------------|
| Tier 1 | Base outfit, standard colors |
| Tier 2 | Enhanced outfit, accessory additions |
| Tier 3 | Distinct silhouette, unique color accent, visible "elite" markers |

---

## ⚔️ Enemy Classes

### Class Summary Table

| Class | Code | Role | Engagement Range | Base Threat |
|-------|------|------|------------------|-------------|
| Hand-to-Hand | H2H | Frontline melee | Close (0-2m) | Low-Medium |
| Ranged | RNG | Support/harassment | Long (5-10m) | Low |
| Melee Weapon | MEL | Heavy damage | Medium (2-4m) | Medium-High |
| Trickster | TRK | Special/gimmick | Varies | Situational |

---

### Hand-to-Hand (H2H) Class

**Role:** Frontline pressure, combo practice, early game training

**Combat Identity:** Street-level fighters engaging in close-quarters combat. The most common enemy type and foundation of the combat experience.

#### H2H Tier Breakdown

**Tier 1 - Street Brawlers**
```
Behavior:
- Approaches at walking speed
- Basic punch/kick combos (1-2 hits)
- No defensive abilities
- Long recovery windows
- Low aggression

Pattern: Idle → Approach → Attack → Long Recovery → Repeat

Player Lesson: Basic combo timing, attack windows
```

**Tier 2 - Aggressive Fighters**
```
Behavior:
- Can sprint-enter with attack
- Occasional blocking (30% chance)
- Faster recovery
- Medium aggression

New Ability: Sprint Attack
Pattern: Sprint Entry (50%) → Combo → Guard Check → Attack

Player Lesson: Breaking guard, dealing with aggression
```

**Tier 3 - Elite Brawlers**
```
Behavior:
- Initiates sprint when distance opens
- Can repeat/chain special attacks
- Counter-attack capability
- High aggression

New Abilities: Distance closing AI, Special chains
Pattern: Sprint if distance > threshold → Special → Chain if hit → Reposition

Player Lesson: Distance management, interrupt timing
```

---

### Ranged (RNG) Class

**Role:** Harassment, zone denial, force player movement

**Combat Identity:** Support enemies that maintain distance and throw projectiles. Low direct threat but annoying if ignored.

#### Ranged Tier Breakdown

**Tier 1 - Throwers**
```
Behavior:
- Maintains maximum distance
- Throws at angled trajectory
- Prioritizes retreating
- Basic projectiles (rocks, cans, debris)

Projectiles: Low damage, medium speed
Pattern: Maintain Distance → Aim → Throw → Reposition Away

Player Lesson: Gap closing, projectile awareness
```

**Tier 2 - Armed Throwers**
```
Behavior:
- Extended engagement range
- Damaging projectiles (knives, bottles)
- Better accuracy
- Slightly more aggressive

New Ability: Dangerous projectiles (potential bleed/break effects)
Pattern: Long Range Position → Precise Throw → Reposition

Player Lesson: Target prioritization, deflection timing
```

**Tier 3 - Marksmen**
```
Behavior:
- Maximum range attacks
- Specialized ranged weapons
- Some projectiles pierce targets
- Can snipe during other fights

New Abilities: Piercing projectiles, conventional weapons
Pattern: Max Range → Precision Attack → Maintain Distance

Player Lesson: Priority targeting, aggressive pursuit required
```

#### Projectile Reference Table

| Tier | Projectile Types | Damage | Speed | Special Properties |
|------|-----------------|--------|-------|-------------------|
| 1 | Rock, Can, Debris | Low | Medium | None |
| 2 | Knife, Bottle, Sharp debris | Medium | Fast | Bleed, Break |
| 3 | Throwing weapons, Crossbow | High | Very Fast | Pierce, Precision |

---

### Melee Weapon (MEL) Class

**Role:** Primary damage threat, demands player respect

**Combat Identity:** Armed enemies with extended range and significant damage. The backbone of mid-to-late game encounters.

#### Melee Tier Breakdown

**Tier 1 - Armed Thugs**
```
Behavior:
- H2H enemies with improvised weapons
- Weapon affects range/speed/damage
- Predictable swing timing
- Standard aggression

Weapons: Pipes, sticks, boards (improvised)
Pattern: Approach → Weapon Swing (1-2 hits) → Recovery → Repeat

Player Lesson: Weapon range awareness, timing adjustment
```

**Tier 2 - Equipped Fighters**
```
Behavior:
- Real weapons (clubs, swords, batons)
- Higher damage output
- Sprint attack entry
- Can throw objects before engaging
- City-specific special moves possible

New Abilities: Sprint entry, Ranged opener, Special move
Pattern: Sprint/Throw Entry → Aggressive Combo → Special → Recovery

Player Lesson: Entry attack awareness, respecting damage
```

**Tier 3 - Weapon Masters**
```
Behavior:
- High block rate with counter-attack
- Special/unique weapons
- AoE attacks exceeding normal range
- Superior defensive AI

New Abilities: Counter-attack, AoE sweep, Weapon special
Pattern: Defensive Stance → Block/Counter OR AoE → Pressure → Special

Player Lesson: NO BUTTON MASHING, bait and punish, AoE dodge
```

#### Weapon Category Reference

| Category | Range | Speed | Damage | Examples |
|----------|-------|-------|--------|----------|
| Light | Short | Fast | Low-Medium | Knife, baton, bottle |
| Medium | Medium | Medium | Medium | Pipe, bat, club |
| Heavy | Long | Slow | High | Sledgehammer, sword, axe |
| Reach | Very Long | Slow | Medium | Pole, chain, whip |

---

### Trickster (TRK) Class

**Role:** Pattern breaker, environmental hazard, memorable moment creator

**Combat Identity:** Unique enemies with stage/city-specific gimmicks requiring special player responses. Not meant to be "fought" traditionally.

**Design Status:** Under Evaluation

#### Trickster Design Rules

1. **Evasion Focus** - Player must dodge/evade, not trade hits
2. **City Themed** - Reflects local culture and environment
3. **Memorable** - Creates "what the—?!" moments
4. **Limited Use** - 1-2 per city maximum to maintain impact
5. **Optional Depth** - Can be engaged or avoided in many cases

#### Trickster Concept Framework

```
Trickster Template:
├── Gimmick Type: [Area Denial / Pattern Attack / Environmental / Summon]
├── Player Response: [Dodge / Run / Destroy Object / Special Action]
├── Threat Window: [Continuous / Periodic / Triggered]
└── Defeat Method: [Standard Combat / Gimmick Counter / Stage Interaction]
```

---

## 👹 Boss Categories

### Boss Hierarchy

```
BOSS TYPES
│
├── MINI-BOSS
│   ├── Location: Mid-stage or stage end
│   ├── Frequency: 1-3 per city
│   ├── Phases: 1 (usually)
│   ├── Skip: Sometimes possible
│   └── Purpose: Stage checkpoint, skill test
│
├── MAIN BOSS
│   ├── Location: City climax
│   ├── Frequency: 1 per city
│   ├── Phases: 2+ (always)
│   ├── Skip: Never
│   └── Purpose: Story progression, mastery test
│
└── SPECIAL GUEST
    ├── Location: Specific hidden/bonus areas
    ├── Frequency: 1+ per city (rotating)
    ├── Phases: 1-2
    ├── Skip: Always (optional content)
    └── Purpose: Bonus rewards, topical content
```

---

### Mini-Boss Design Guidelines

**Purpose:** Stage checkpoint that tests specific skills learned in that stage

**Design Rules:**
1. Significantly elevated HP and damage vs standard enemies
2. At least one unique ability not seen on regular enemies
3. Appears at specific narrative/gameplay points
4. Sometimes can be avoided or skipped
5. Often tied to narrative threads
6. Single phase (usually)
7. Clear arena provided

**Stat Guidelines:**
| Attribute | Relative to Tier 3 |
|-----------|-------------------|
| HP | 3-5x |
| Damage | 1.5-2x |
| Speed | Varies by design |
| Abilities | 2-4 unique |

---

### Main Boss Design Guidelines

**Purpose:** City climax that tests mastery of everything learned

**Design Rules:**
1. **Story Critical** - Cannot be skipped, tied to narrative
2. **Multi-Phase** - Minimum 2 distinct phases
3. **Pattern Based** - Learnable, fair attack patterns
4. **Adaptive AI** - Adjusts based on player behavior
5. **Unique Arena** - Custom environment for encounter
6. **Memorable** - Should be discussed and remembered
7. **Rewarding** - Significant rewards and progression

**Phase Design:**
```
Phase 1 (60% HP typically):
- Introduce core mechanics
- Establish patterns
- Moderate difficulty
- Teach the boss "language"

Phase Transition:
- Visual transformation
- Brief invulnerability
- Dramatic moment

Phase 2+ (40% HP typically):
- New abilities added
- Patterns modified/combined
- Increased aggression
- Test mastery of Phase 1
```

**Stat Guidelines:**
| Attribute | Value |
|-----------|-------|
| Total HP | Very High (city-appropriate) |
| Damage | High (punishes mistakes) |
| Phases | 2 minimum |
| Unique Abilities | 4-8 total across phases |

---

### Special Guest Boss Design Guidelines

**Purpose:** Topical bonus content with exclusive rewards

**Design Rules:**
1. **Satirical Reference** - Based on current events/figures
2. **Rotating Availability** - May change with updates
3. **Unique Rewards** - Exclusive cosmetics and inventory items
4. **Self-Contained** - Story-optional encounter
5. **Location Specific** - Found in specific stage areas
6. **Discoverable** - Not always obvious, rewards exploration

**Reward Structure:**
- Exclusive cosmetic item (character skin element)
- Steam inventory item (trading card, badge)
- Achievement/trophy
- Potential currency bonus

---

## 📝 Enemy Documentation Templates

### Standard Enemy Template

```markdown
# [Enemy Name] - Enemy Profile

**Class:** [H2H / Ranged / Melee / Trickster]
**Tier:** [1 / 2 / 3]
**City:** [Paris / Istanbul / London / Tokyo / Los Angeles / Barcelona]
**Version:** 1.0

---

## Quick Reference

| Attribute | Value |
|-----------|-------|
| HP | [Low / Medium / High] |
| Damage | [Low / Medium / High] |
| Speed | [Slow / Medium / Fast] |
| Range | [Close / Medium / Long] |
| Threat Level | [1-5 stars] |

---

## Visual Design

**Physical Description:**
[Detailed appearance description]

**Silhouette Identifiers:**
[What makes them instantly recognizable]

**Color Palette:**
[Primary and accent colors]

**Animation Notes:**
[Key animation characteristics]

---

## Combat Behavior

### Attack Pattern
[Describe the standard attack loop]

### Abilities

**[Ability 1 Name]**
- Type: [Attack / Defense / Movement / Special]
- Description: [What it does]
- Telegraph: [How player knows it's coming]
- Counter: [How to deal with it]

[Repeat for each ability]

### AI Behavior
- Aggression Level: [Low / Medium / High]
- Preferred Range: [Distance]
- Group Behavior: [How they act with other enemies]
- Special Conditions: [Any unique AI triggers]

---

## Player Interaction

**Intended Player Feeling:**
[What emotion/reaction this enemy should evoke]

**Combat Lesson:**
[What skill this enemy teaches]

**Common Mistakes:**
[What players do wrong against this enemy]

**Optimal Strategy:**
[Brief effective approach]

---

## Narrative Context

**Background:**
[Who are they, why are they fighting]

**City Connection:**
[How they relate to the city's themes]

---

## Related Enemies

- [List variants or related enemies]

---

**Document Version:** 1.0
**Last Updated:** [Date]
```

---

### Mini-Boss Template

```markdown
# [Mini-Boss Name] - Mini-Boss Profile

**Location:** [City] - [Stage/Area]
**Base Class:** [H2H / Melee / Ranged / Unique]
**Weapon:** [If applicable]
**Version:** 1.0

---

## Quick Reference

| Attribute | Value |
|-----------|-------|
| HP | [Exact or relative value] |
| Damage | [Medium-High / High / Very High] |
| Speed | [Slow / Medium / Fast] |
| Threat Level | ⭐⭐⭐⭐ [adjust as needed] |
| Phases | [1 / 2] |
| Skippable | [Yes / No] |

---

## Visual Design

**Physical Description:**
[Detailed appearance]

**Distinguishing Features:**
[What makes them visually memorable]

**Arena:**
[Description of fight location]

---

## Combat Design

### Phase 1 [Only Phase if single-phase]

**Attack Pattern:**
| Attack | Description | Telegraph | Counter |
|--------|-------------|-----------|---------|
| [Name] | [What it does] | [Warning sign] | [How to avoid/punish] |

**Defensive Behavior:**
[How they defend, block, evade]

**AI Notes:**
[Special behavioral patterns]

### Phase 2 [If applicable]

**Trigger:** [What causes phase change]

**Changes:**
[What's different in Phase 2]

---

## Combat Strategy

**Opening:**
[How to start the fight]

**Core Loop:**
[The main back-and-forth pattern]

**Punish Windows:**
[When to deal damage safely]

**Common Deaths:**
[What kills players]

---

## Narrative Role

**Story Connection:**
[Their role in the narrative]

**Dialogue:** [If any]
[Key lines they say]

---

## Rewards

- [XP/Currency]
- [Item drops]
- [Progression unlock]

---

**Document Version:** 1.0
**Last Updated:** [Date]
```

---

### Main Boss Template

```markdown
# [Boss Name] - Main Boss Profile

**Location:** [City] - End of [Area]
**Story Role:** [Brief narrative importance]
**Version:** 1.0

---

## Quick Reference

| Attribute | Value |
|-----------|-------|
| Total HP | [Value] |
| Phases | [Number] |
| Difficulty | ⭐⭐⭐⭐⭐ [adjust] |
| Estimated Time | [Minutes] |

---

## Visual Design

**Appearance - Base:**
[Description]

**Appearance - Transformed:** [If applicable]
[Description of phase 2+ look]

**Arena Design:**
[Description of boss arena]

---

## Phase 1: [Phase Name]

**HP:** [Percentage or value]

**Companion/Gimmick:** [If any]
[Description]

### Attack Pattern

| Attack | Type | Description | Telegraph | Counter |
|--------|------|-------------|-----------|---------|
| [Name] | [Melee/Ranged/AoE/Special] | [What it does] | [Warning] | [Response] |

### Defensive Behavior
[Blocking, countering, evasion patterns]

### AI Behavior
[How the boss "thinks" in this phase]

---

## Phase Transition

**Trigger:** [What causes the change]

**Transition Sequence:**
[What happens visually/mechanically]

**Player Window:**
[What player can/should do during transition]

---

## Phase 2: [Phase Name]

**HP:** [Percentage or value]

**New Mechanics:**
[What's added]

### New/Modified Attacks

| Attack | Type | Description | Telegraph | Counter |
|--------|------|-------------|-----------|---------|

### Changed Behavior
[How AI differs from Phase 1]

---

## [Additional Phases if needed]

---

## Combat Strategy Guide

### Preparation
[What player should have/know before fight]

### Phase 1 Strategy
[Detailed approach]

### Phase 2 Strategy
[Detailed approach]

### Recovery Opportunities
[When player can heal safely]

### No-Hit Approach [Optional]
[For skilled players/speedrunners]

---

## Narrative Context

**Story Significance:**
[Why this boss matters to the story]

**Pre-Fight Dialogue:**
[Key lines before battle]

**Mid-Fight Dialogue:** [If any]
[Things said during phases]

**Defeat Dialogue:**
[What they say when beaten]

---

## Rewards

**Guaranteed:**
- [Story progression]
- [City completion]
- [Currency/XP amount]

**Potential Drops:**
- [Item possibilities]

**Achievements:**
- [Related achievements]

---

## Related Content

- [Connected story documents]
- [Enemy variants that appear with boss]
- [Stage design document]

---

**Document Version:** 1.0
**Last Updated:** [Date]
```

---

### Special Guest Boss Template

```markdown
# [Guest Boss Name] - Special Guest Profile

**Reference:** [Who they satirize - INTERNAL NOTE]
**Location:** [City] - [Specific Area]
**Availability:** [Always / Seasonal / Limited Time]
**Version:** 1.0

---

## Quick Reference

| Attribute | Value |
|-----------|-------|
| HP | [Value] |
| Phases | [Number] |
| Difficulty | [Stars] |
| Discovery | [How player finds them] |

---

## Visual Design

**Appearance:**
[Description - satirical elements noted]

**Visual Gags:**
[Humorous design elements]

---

## Combat Design

### Phase 1: [Name]

[Attack pattern table]

### Phase 2: [Name] [If applicable]

[Attack pattern table]

---

## Combat Strategy

[Brief effective approach]

---

## Exclusive Rewards

**Cosmetic:**
- [Item name and description]

**Steam Inventory:**
- [Trading card / badge / etc.]

**Achievement:**
- Name: [Achievement name]
- Description: [Achievement text]

**Currency/Bonus:**
- [Any extra rewards]

---

## Discovery

**Location Details:**
[How to find this boss]

**Availability Window:**
[When they can be fought]

**Respawn:**
[Can they be fought again]

---

**Document Version:** 1.0
**Last Updated:** [Date]
```

---

## 📊 Encounter Design Guidelines

### Spawn Rules

**Encounter Composition by Stage Progress:**

| Stage Section | Enemy Types | Max Count | Notes |
|---------------|-------------|-----------|-------|
| Early (Tutorial) | H2H T1 only | 3 | Teaching basics |
| Early-Mid | H2H T1-2, RNG T1 | 4 | Introduce ranged |
| Mid | H2H T1-2, MEL T1, RNG T1-2 | 5 | Full variety |
| Late | All T1-2, occasional T3 | 6-7 | Pressure test |
| Pre-Boss | Reduced or cleared | 0-3 | Prepare for boss |
| Boss | Boss + minimal adds | Boss-specific | Focus encounter |

### Group Composition Guidelines

**Balanced Group (Recommended):**
- 60% H2H (pressure and combo fodder)
- 25% MEL (damage threat)
- 15% RNG (harassment)

**Pressure Group:**
- 80% H2H (overwhelming numbers)
- 20% MEL (occasional threat)

**Defensive Group:**
- 40% H2H
- 30% MEL
- 30% RNG (forces aggression)

### Elite Encounters

**Tier 3 Spawn Rules:**
- Never more than 1 T3 enemy at a time (unless designed encounter)
- T3 appearance signals "focus this enemy"
- Other enemies reduce aggression when T3 is active
- T3 defeat may trigger reinforcement wave

---

## 🎚️ Difficulty Scaling

### Difficulty Modifiers

| Difficulty | HP | Damage | Enemy Count | T3 Frequency | Boss HP |
|------------|-----|--------|-------------|--------------|---------|
| Easy | 0.75x | 0.75x | -20% | Rare | 0.8x |
| Normal | 1.0x | 1.0x | Standard | Normal | 1.0x |
| Hard | 1.25x | 1.25x | +20% | Common | 1.2x |
| Nightmare | 1.5x | 1.5x | +30% | Frequent | 1.4x |

### Difficulty-Specific Behaviors

**Easy Mode:**
- Longer enemy telegraphs
- Reduced aggression
- More recovery windows
- Boss patterns simplified

**Hard Mode:**
- Faster attack execution
- More combo extensions
- Reduced recovery windows
- Additional boss attacks

**Nightmare Mode:**
- Minimal telegraphs
- Maximum aggression
- New attack combinations
- Boss has additional phase mechanics

---

## 🎭 Player Experience Targets

### Emotion Mapping

| Enemy Type | Intended Player Feeling |
|------------|------------------------|
| H2H Tier 1 | "Easy, let me practice combos" |
| H2H Tier 2 | "Need to watch for that sprint" |
| H2H Tier 3 | "Okay, this one's serious" |
| RNG Tier 1-2 | "Annoying, close the gap" |
| RNG Tier 3 | "Priority target, rush them" |
| MEL Tier 1 | "Respect the range" |
| MEL Tier 2 | "Dangerous, play smart" |
| MEL Tier 3 | "Mini-boss energy, full focus" |
| Trickster | "What the—dodge!" |
| Mini-Boss | "Okay, let's do this" |
| Main Boss | "Everything I've learned" |
| Special Guest | "Ha! I know who that is" |

### Skill Progression Through Enemies

```
PLAYER SKILL JOURNEY
│
├── Stage 1: Fundamentals
│   ├── H2H T1 → Basic attack timing
│   └── H2H T2 → Blocking, sprint awareness
│
├── Stage 2: Expansion
│   ├── RNG T1 → Gap closing
│   ├── MEL T1 → Range management
│   └── H2H T3 → Interrupt timing
│
├── Stage 3: Mastery
│   ├── RNG T2-3 → Priority targeting
│   ├── MEL T2-3 → Pattern recognition
│   └── Trickster → Adaptation
│
└── Boss Encounters: Application
    ├── Mini-Boss → Skill combination
    └── Main Boss → Full mastery test
```

---

## 📁 Document Organization

### Folder Structure

```
docs/03_Characters_and_Actors/enemies-bosses/
│
├── enemies-and-bosses-main.md (THIS DOCUMENT)
│
├── enemies/
│   ├── paris/
│   │   ├── keko.md
│   │   ├── masked-fatso.md
│   │   └── [etc.]
│   ├── istanbul/
│   ├── london/
│   └── [etc.]
│
├── mini-bosses/
│   ├── paris/
│   │   ├── orangegutan.md
│   │   └── greenilla.md
│   └── [etc.]
│
├── main-bosses/
│   ├── paris-jurinho.md
│   └── [etc.]
│
└── special-guests/
    ├── the-animal.md
    └── [etc.]
```

---

## 🔄 Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | January 16, 2025 | Initial document creation |

---

## 📎 Related Documents

- [Main GDD](../../01_GDD/main-gdd.md)
- [Combat Mechanics](../../02_Game_Mechanics/core-mechanics.md) *(planned)*
- [Playable Characters](../playable-characters/)
- [Stage Design Documents](../../04_Story_and_World/) *(planned)*

---

**Document Version:** 1.0  
**Last Updated:** January 16, 2025  
**Maintained By:** Ozan Yokuva, Kerem Yokuva

---

*"Every enemy is a lesson. Every boss is an exam."*
