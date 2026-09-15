# Flint Keyboard Layout

## Keyboard Diagram

<div align="center">

![Flint keyboard layout](../Assets/Images/Keyboard%20Layouts/flint-ansi.png)  
*Flint keymap for ANSI 101/104-key keyboards*

</div>

## Background

I typed on Colemak-DH for about 10 years before deciding to switch layouts – considering how many years had passed since the creation of Colemak and its DH ergo mod. Since that time, keyboard design approaches and useful metrics were reevaluated by the Alternative Keyboard Layout community, leading to the development of far more ergonomic and efficient layouts.

I also reevaluated what I value in a keyboard layout, so I chose to go down the rabbit hole and explore new designs created over the last five years. Eventually, I found a handful where the design logic was sound, but they didn't fully resonate with what I was looking for, or what I found comfortable after a decade of Colemak usage.

Thus, Flint was born.

## Design

Flint wasn't built in a vacuum, nor was it generated purely by running an algorithm on an English text corpus. It was born out of a specific set of constraints: **I needed a single layout that comfortably handles English, Polish, and Hungarian without turning high-frequency key transitions into an obstacle course.**

Most modern layout analyzers optimize aggressively for a single language (usually English). However, when you introduce Polish digraphs, and Hungarian's high vowel density into the mix, pure single-corpus layouts quickly reveal their friction points, causing awkward same-finger stutters, lateral reaches, or unnatural hand balances.

Flint synthesizes the key breakthroughs of three distinct layout philosophies into a single, cohesive engine:

* **Pine v4 (Structural Base & Fluid Rolls):** Uses Pine's elegant base structure as a starting point, re-engineering its alpha cluster to handle multi-lingual letter frequencies (such as optimized placements for <kbd>D</kbd>, <kbd>M</kbd>, <kbd>Z</kbd>, and <kbd>V</kbd>) based on real-world usage rather than abstract benchmarks.
* **Graphite (Hand Alternation & Rhythm):** Incorporates Graphite's core design philosophy of isolating core vowels and high-frequency consonants onto opposing hands. This creates a balanced, rhythmic typing style across all three languages, drastically cutting down on Same-Finger Bigrams (SFBs).
* **Colemak-DH (Tactile Familiarity & Ergonomics):** Respects a decade of hardwired muscle memory. By maintaining strong index and middle finger involvement while avoiding excessive lateral inner-column stretches, Flint preserves familiar, low-strain movement patterns.

### Design Principles

1. **Ergonomic Harmony Over Peak Stats:** Rather than chasing #1 benchmark rankings on single-language leaderboards, Flint prioritizes overall finger travel reduction, low SFB counts, and high alternation across three languages.
2. **Personal Corpus Optimization:** Key placements prioritize actual daily vocabulary and typing patterns, granting high-value index-finger real estate to heavy hitters across all three target languages.

_Note:_ Flint's left hand bottom row was arranged with angle cheat in mind.

### Weaknesses

No keyboard layout is perfect, and Flint is no exception. The main challenge stems from optimizing for three distinct languages – a process where compromises were inevitable. My typical daily usage is roughly 60%+ English, with the remainder split between Polish and Hungarian. Consequently, the design primarily targets English ergonomics while strategically reserving comfortable, high-metric placements (such as low SFBs and high hand alternation) for Polish and Hungarian.

* **Finger Workload Allocation:** Flint inherits Pine's and Colemak's higher index and middle finger load, deliberately favoring stronger central fingers over Graphite's heavier ring finger and pinky usage.
* **Right Index-Finger SFBs:** Flint inherits Graphite's right-index cluster dynamics, making bigrams like _ph_, _fy_, _py_, and _pk_ SFBs.
* **Left Home-Row Trade-offs:** By preserving Pine's left-hand home row (<kbd>N</kbd><kbd>R</kbd><kbd>S</kbd><kbd>T</kbd>) to maintain strong-finger engagement for English, certain secondary language bigrams yield higher-than-ideal SFBs – notably Polish and Hungarian patterns like _cs_, _ść_, and _wd_.

## Key Layout Mechanics

Flint's alpha layout introduces several targeted key placements designed to minimize micro-stutters and reduce finger travel:

* **Top-Row Index Placement for <kbd>D</kbd>:** Positions <kbd>D</kbd> on the primary top-left index slot. This tries to eliminate awkward scissor motions with the top-row <kbd>L</kbd> key while unlocking the possibility to alternate finger common bigrams like _gd_, _wd_, and _dz_.
* **Optimized Middle-Finger Curl for <kbd>M</kbd>:** Places <kbd>M</kbd> on the left bottom middle slot, ensuring smooth, natural motion on common patterns like _sm_ and _ms_ without introducing new middle finger SFB collisions.
* **High-Value Index Real Estate for <kbd>Z</kbd>:** Gives <kbd>Z</kbd> prime placement on the upper index column, granting easy reach for some of the building blocks of Polish and Hungarian (_sz_, _zs_, _cz_).
* **Inner Column Offloading for <kbd>X</kbd>:** Positions <kbd>X</kbd> on the bottom-inner index slot, keeping a low frequency letter off prime real estate while reducing lateral workload across the left hand.
* **Rhythmic Vowel/Consonant Split:** Clusters core vowels on the right hand while keeping major consonants on the left, enforcing consistent hand alternation.

## Multi-Language Considerations

Designing for a trilingual workflow requires balancing radically different linguistic structures:

* **English:** High frequency of common consonants (*t*, *n*, *r*, *s*, *d*) paired with balanced vowel distribution.
* **Polish:** Heavy reliance on consonant clusters and digraphs (*sz*, *cz*, *rz*, *dz*, *gd*). Flint offloads these common pairings with the help of providing easy alternate fingering as a solution.
* **Hungarian:** Exceptionally high vowel density and unique letter frequencies (*e*, *a*, *i*, *o*, and *z*). Placing vowels systematically on the right hand and elevating <kbd>Z</kbd> on the left hand prevents excessive same-hand engine stalling.

## Lineage & Acknowledgments

While Flint stands as a standalone custom layout, it heavily leverages the foundational breakthroughs of the following projects:

* ClemenPine – _[Pine v4 Layout](https://github.com/ClemenPine/pine)_: Structural base and alpha cluster inspiration.
* Richard Davison – _[Graphite Layout](https://github.com/rdavison/graphite-layout)_: Hand-alternation design philosophy and vowel isolation.
* Steve “stevep99” P – _[Colemak Mod-DH](https://colemakmods.github.io/mod-dh/)_: Ergonomic home-row and finger-reach principles.
