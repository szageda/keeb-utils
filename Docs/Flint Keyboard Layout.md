# Flint Keyboard Layout

## Keyboard diagram

<div align="center">

![Flint keyboard layout](../Assets/Images/Keyboard%20Layouts/flint-ansi.png)  
_Flint keymap for ANSI 101/104-key keyboards_

</div>

## Background

After roughly a decade using Colemak-DH, I decided to re-evaluate my typing setup. The alternative keyboard layout (AKL) community has made huge strides in recent years, refining ergonomic metrics, movement models, and design philosophies well beyond Colemak’s original goals.

I looked at several brilliant layouts created over the past five years. They all had sound logic, but none felt completely natural or suited to my typing needs and muscle memory.

Thus, **Flint** was born.

## Design philosophy

I created Flint to solve a specific multilingual challenge: **one layout optimized for English, Polish, and Hungarian, without making frequent transitions between languages feel like an obstacle course.**

Most layout generators optimize heavily for a single language, typically English. Add Polish consonant clusters and Hungarian’s high vowel density, and layouts based on a single corpus can quickly develop friction: awkward same-finger bigrams (SFBs), long lateral reaches, or unbalanced hand use that can stall alternation.

Flint brings together ideas from three layouts:

- **Pine v4 (structural base and fluid rolls):** I used Pine’s structure as a foundation, then reworked the letter keys to account for practical letter use across multiple languages rather than single-corpus benchmarks.
- **Graphite (hand alternation and rhythm):** I drew on Graphite’s approach of placing primary vowels and frequent consonants on opposite hands, aiming for a balanced typing rhythm across all three languages.
- **Colemak-DH (tactile familiarity and low strain):** After a decade of muscle memory, I wanted to keep strong index- and middle-finger engagement while avoiding uncomfortable lateral reaches between inner columns.

### Key principles

1. **Ergonomic balance over single-language benchmarks:** Rather than chase the top spot on English-only leaderboards, I prioritize reduced finger travel, fewer SFBs, and more hand alternation across all three languages.
2. **Trilingual corpus balance:** The layout reflects real-world vocabulary, weighted roughly 60% English, with Polish and Hungarian making up the rest. This gives frequently used letters in each language access to the home row.

*Note:* I arranged the left-hand bottom row with the angle mod (or angle cheat) in mind.

### Row breakdown

- **Home row:** I kept much of the familiar Colemak-DH and Pine v4 arrangement on the left (<kbd>N</kbd> <kbd>R</kbd> <kbd>S</kbd> <kbd>T</kbd>). On the right, <kbd>H</kbd> <kbd>E</kbd> <kbd>A</kbd> <kbd>I</kbd> follows Graphite’s vowel-block structure.
- **Top row:** I used the widely respected “boulevard” arrangement on the left hand: <kbd>B</kbd> <kbd>L</kbd> <kbd>C</kbd> <kbd>D</kbd> followed by <kbd>V</kbd>. Putting <kbd>V</kbd> on the top row avoids top-to-bottom scissor jumps in common English *lv* sequences such as *involve* and *resolve*. Polish and Hungarian *cz*, *cs*, *sz* combinations rely on some alternate fingering to avoid SFBs.
- **Bottom row:** I moved less frequently used keys to pinky, ring, and middle-finger extensions, while keeping the index fingers slightly curled to reduce strain.

## Multilingual mechanics

- **English:** Frequent consonants (*t*, *n*, *r*, *s*, *d*) are balanced with vowels (*e*, *a*, *i*, *o*, *u*) on the right hand.
- **Polish:** Frequent digraphs (*sz*, *cz*, *rz*, *dz*, *gd*) rely on subjectively acceptable alternate fingering.
- **Hungarian:** The high vowel density (*e*, *a*, *i*, *o*) is concentrated on the right hand, and placing consonants on the left hand helps prevent hand stalling.

## Trade-offs and known weaknesses

No layout is without compromises, especially when balancing three languages:

- **Central finger load:** Flint inherits Pine’s and Colemak’s heavier use of the index and middle fingers, favoring those stronger central fingers over Graphite’s greater reliance on the ring and pinky fingers.
- **Right-index SFBs:** Flint retains Graphite’s right-index dynamics, so bigrams such as *ph*, *fy*, *py*, and *pk* remain same-finger movements.
- **SFBs in the other languages:** Keeping Pine’s left-hand home row (<kbd>N</kbd> <kbd>R</kbd> <kbd>S</kbd> <kbd>T</kbd>) creates some friction in Polish and Hungarian sequences such as *cs*, *ść*, *cz*, and *wd*. Alternate fingering can help mitigate it.

## Lineage and acknowledgments

- ClemenPine – [Pine v4 layout](https://github.com/ClemenPine/pine): letter-key arrangement and structural base.
- Richard Davison – [Graphite layout](https://github.com/rdavison/graphite-layout): hand-alternation philosophy and vowel isolation.
- Steve “stevep99” P – [Colemak Mod-DH](https://colemakmods.github.io/mod-dh/): home-row ergonomics and finger-reach principles.
