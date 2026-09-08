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

Most modern layout analyzers optimize aggressively for a single language (usually English). However, when you introduce Polish digraphs (*sz*, *cz*, *rz*) and Hungarian's high vowel density into the mix, pure single-corpus layouts quickly reveal their friction points, causing awkward same-finger stutters, lateral reaches, or unnatural hand balances.

Flint synthesizes the key breakthroughs of three distinct layout philosophies into a single, cohesive engine:

* **Pine v4 (Structural Base & Fluid Rolls)**: Uses Pine's elegant base structure as a starting point, re-engineering its alpha cluster to handle multi-lingual letter frequencies (such as custom placements for <kbd>M</kbd>, <kbd>V</kbd>, <kbd>K</kbd>, and <kbd>P</kbd>) based on real-world usage rather than abstract benchmarks.
* **Graphite (Hand Alternation & Rhythm):** Incorporates Graphite's core design philosophy of isolating core vowels and high-frequency consonants onto opposing hands. This creates a balanced, rhythmic typing style across all three languages, drastically cutting down on Same-Finger Bigrams (SFBs).
* **Colemak-DH (Tactile Familiarity & Finger Curls):** Respects a decade of hardwired muscle memory. By keeping <kbd>D</kbd> on a comfortable middle-finger bottom-row curl, Flint avoids unnecessary vertical extensions while preserving familiar lower-row dynamics.

### Design Principles

1. **Ergonomic Harmony Over Peak Stats:** Rather than chasing #1 benchmark rankings on single-language leaderboards, Flint prioritizes overall finger travel reduction, low SFB counts, and high alternation across three languages.
2. **Preservation of System Flow:** The alpha cluster was designed to fit seamlessly around a long-standing, battle-tested `Extend` and `Symbols` layer ecosystem. Navigation and shortcut patterns remain entirely undisturbed.
3. **Personal Corpus Optimization:** Key placements prioritize actual daily vocabulary and typing patterns, granting high-value index-finger real estate to heavy hitters across all three target languages.

_Note:_ Flint is supposed to be typed on using angle cheat.

## Key Layout Mechanics

Flint's alpha layout introduces several targeted key placements designed to minimize micro-stutters and reduce finger travel:

* **Middle-Finger Bottom Curl for <kbd>D</kbd>:** Preserves Colemak-DH's ergonomic bottom-row curl on the left hand, eliminating vertical same-finger stutters on the index finger while maintaining familiar muscle memory for common language patterns.
* **Upgraded Index Real Estate for <kbd>M</kbd>:** Positions <kbd>M</kbd> on the primary top-left index slot. This accommodates high-frequency usage across English, Polish, and Hungarian without forcing lateral finger reaches.
* **Inner Column Offloading for <kbd>V</kbd>:** Relocates <kbd>V</kbd> to the top-inner index position, offloading a lower-frequency character in Polish and Hungarian away from prime home-row extensions.
* **Rhythmic Vowel/Consonant Split:** Clusters core vowels on the right hand while keeping major consonants on the left, enforcing consistent hand alternation during extended typing sessions.

## Multi-Language Considerations

Designing for a trilingual workflow requires balancing radically different linguistic structures:

* **English:** High frequency of common consonants (`T`, `N`, `R`, `S`, `D`) paired with balanced vowel distribution.
* **Polish:** Heavy reliance on consonant clusters and digraphs (*sz*, *cz*, *rz*, *dz*). Flint offloads these common pairings across alternating hands or smooth index/middle rolls to prevent left-hand overloading.
* **Hungarian:** Exceptionally high vowel density and unique letter frequencies (`E`, `A`, `I`, `O`). Placing vowels systematically on the right hand prevents excessive same-hand engine stalling.

## Lineage & Acknowledgments

While Flint stands as a standalone custom layout, it heavily leverages the foundational breakthroughs of the following projects:

* ClemenPine – _[Pine v4 Layout](https://github.com/ClemenPine/pine)_: Structural base and alpha cluster inspiration.
* Richard Davison – _[Graphite Layout](https://github.com/rdavison/graphite-layout)_: Hand-alternation design philosophy and vowel isolation.
* Steve “stevep99” P – _[Colemak Mod-DH](https://colemakmods.github.io/mod-dh/)_: Bottom-row curl mechanics and home-row ergonomic principles.
