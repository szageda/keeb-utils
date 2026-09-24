# Flint Keyboard Layout

## Keyboard Diagram

<div align="center">

![Flint keyboard layout](../Assets/Images/Keyboard%20Layouts/flint-ansi.png)  
_Flint keymap for ANSI 101/104-key keyboards_

</div>

## Background

After roughly a decade on Colemak-DH, I decided to re-evaluate my typing setup. The Alternative Keyboard Layout (AKL) community has made massive strides in recent years, refining ergonomic metrics, movement models, and optimization philosophies well beyond Colemak's original design goals.

Looking into modern designs created over the last five years, I found several brilliant layouts with sound logic, but none that felt completely natural or suited to my specific typing needs and muscle memory. 

Thus, **Flint** was born.

## Design Philosophy

Flint was created to solve a specific multi-lingual challenge: **a single layout optimized to handle English, Polish, and Hungarian seamlessly, without turning high-frequency cross-language transitions into an obstacle course.**

Most layout generators optimize aggressively for a single language (typically English). When you introduce Polish consonant clusters and Hungarian's high vowel density, pure single-corpus layouts quickly reveal friction points—causing awkward same-finger bigrams (SFBs), heavy lateral reaches, or off-balance hand engine stalling.

Flint synthesizes breakthroughs from three distinct layout designs:

* **Pine v4 (Structural Base & Fluid Rolls):** Utilizes Pine’s base structure as a foundation, re-engineering the alpha cluster to handle multi-lingual letter frequencies based on practical usage rather than single-corpus benchmarks.
* **Graphite (Hand Alternation & Rhythm):** Incorporates Graphite’s philosophy of isolating primary vowels and high-frequency consonants onto opposing hands, creating a balanced, rhythmic typing cadence across all three languages.
* **Colemak-DH (Tactile Familiarity & Low Strain):** Respects a decade of hardwired muscle memory by maintaining strong index and middle finger engagement while avoiding uncomfortable lateral inner-column stretches.

### Key Principles

1. **Ergonomic Harmony Over Single-Language Benchmarks:** Rather than chasing top spot on English-only leaderboards, Flint prioritizes overall finger travel reduction, low total SFB counts, and high hand alternation across all three target languages.
2. **Trilingual Corpus Balancing:** Placement logic accounts for real-world vocabulary across English (~60%), Polish, and Hungarian, ensuring prime home-row real estate for heavy hitters in each language.

_Note:_ The left-hand bottom row is arranged with the angle mod / angle cheat in mind.

### Row Breakdown

* **Home Row:** Retains strong familiarity from Colemak-DH and Pine v4 on the left side (<kbd>N</kbd><kbd>R</kbd><kbd>S</kbd><kbd>T</kbd>), while the right side (<kbd>H</kbd><kbd>E</kbd><kbd>A</kbd><kbd>I</kbd>) adopts Graphite's vowel block structure.
* **Top Row:** Uses the widely respected "boulevard" alpha setup on the left hand (<kbd>B</kbd><kbd>L</kbd><kbd>C</kbd><kbd>D</kbd><kbd>Z</kbd> / <kbd>B</kbd><kbd>L</kbd><kbd>C</kbd><kbd>D</kbd><kbd>V</kbd> / <kbd>B</kbd><kbd>L</kbd><kbd>C</kbd><kbd>D</kbd><kbd>W</kbd>). Placing <kbd>V</kbd> on the top row eliminates top-bottom scissor jumps on common English sequences (_involve_, _resolve_), while relying on slight alternate fingering to handle Polish/Hungarian _s_/_z_ combinations without SFB stalling.
* **Bottom Row:** Infrequently used keys are relegated to pinky/ring/middle extensions, while keeping index fingers slightly curled for lower strain.

## Multi-Language Mechanics

* **English:** High-frequency consonants (_t_, _n_, _r_, _s_, _d_) are balanced with right-hand vowel isolation (_e_, _a_, _i_, _o_, _u_).
* **Polish:** High reliance on digraphs (_sz_, _cz_, _rz_, _dz_, _gd_) is managed via comfortable hand alternation and accessible finger movement.
* **Hungarian:** Exceptionally high vowel density (_e_, _a_, _i_, _o_) is isolated on the right hand, while elevated placement of _z_ prevents left-hand stalling.

## Trade-offs & Known Weaknesses

No layout is without compromises, especially when balancing three languages:

* **Central Finger Load:** Flint inherits higher index and middle finger involvement from Pine and Colemak, favoring stronger central digits over Graphite’s heavier ring and pinky utilization.
* **Right Index SFBs:** Retains Graphite's right-index dynamics, leaving bigrams like _ph_, _fy_, _py_, and _pk_ as same-finger movements.
* **Secondary Language SFBs:** Preserving Pine's left home row (<kbd>N</kbd><kbd>R</kbd><kbd>S</kbd><kbd>T</kbd>) creates minor friction on specific Polish and Hungarian sequences (such as _cs_, _ść_, _cz_, or _wd_), which are mitigated through alternate fingering techniques.

## Lineage & Acknowledgments

* **ClemenPine** – [Pine v4 Layout](https://github.com/ClemenPine/pine): Alpha cluster and structural base.
* **Richard Davison** – [Graphite Layout](https://github.com/rdavison/graphite-layout): Hand alternation philosophy and vowel isolation.
* **Steve "stevep99" P** – [Colemak Mod-DH](https://colemakmods.github.io/mod-dh/): Home-row ergonomics and finger-reach principles.
