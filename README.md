<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-128.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils

Keeb Utils (“Keyboard Utilities”) is a modular suite of keyboard layouts and layer configurations designed to enhance typing ergonomics and productivity. This project provides a cross-platform implementation of a few alternative keyboard layouts as well as traditional QWERTY with advanced functional layers inspired by the work of others in the Alternative Keyboard Layouts community.

## Design Principles

Keeb Utils adheres to the following core principles:

* **Functionality and Minimalism:** Avoids high-maintenance features in favor of reliable, essential tools.
* **Cross-Platform Parity:** Ensures features are functionally identical across different software implementations.
* **High Modularity:** Allows for easy customization and component swapping.

## Supported Platforms

Keeb Utils leverages third-party software to remap keys at the operating system level:

* **Linux** via **[KMonad](https://github.com/kmonad/kmonad)**
* **Windows:** via **[AutoHotkey v2](https://www.autohotkey.com/)**

## Keyboard Layout

This project utilizes the **Flint** layout. Flint is a custom, trilingual-optimized keyboard layout designed to maximize hand alternation, lower finger fatigue, and eliminate same-finger bigrams across English, Polish, and Hungarian.

Further reading:

* [Learn more about Flint](Docs/Flint%20Keyboard%20Layout.md)

<div align="center">

![Flint keyboard layout](/Assets/Images/Keyboard%20Layouts/flint-ansi.png)  
*Flint keymap for ANSI 101/104-key keyboards*

</div>

## Functional Layers

Keeb Utils uses layers to provide immediate access to navigation, symbols, and numeric entry without requiring significant hand movement.

### Extend Layer

The Extend layer optimizes text editing and navigation. Activating this layer (activated by holding <kbd>Caps Lock</kbd>) maps essential functions to the home row.

**Key Benefits:**

* **Home Row Retention:** Minimizes wrist fatigue by keeping hands in the primary typing position.
* **Optimized Navigation:** Maps arrow keys to the <kbd>U</kbd> <kbd>N</kbd> <kbd>E</kbd> and <kbd>I</kbd> keys (Standard QWERTY <kbd>I</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>).
* **Integrated Shortcuts:** Accesses common actions like “Select Next Word” or “Close Tab” via home-row modifiers.

<div align="center">

![Extend layer](Assets/Images/Keyboard%20Layers/extend.png)  
*Extend layer keymap for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Navigation keys](Assets/Images/Keyboard%20Layers/extend-blue.png) | Navigation keys |
| ![Ctrl shortcuts](Assets/Images/Keyboard%20Layers/extend-green.png) | Common Ctrl-based shortcuts |
| ![Modifiers](Assets/Images/Keyboard%20Layers/extend-orange.png) | Modifier key access |
| ![One-Shift Modifier Key](Assets/Images/Keyboard%20Layers/extend-osm.png) | One-Shot Modifier (see below this table) |
| ![Multi-Sticky keys](Assets/Images/Keyboard%20Layers/extend-mtm.png) | Multi-Timed Modifiers (see below this table) |
| ![Text manipulation keys](Assets/Images/Keyboard%20Layers/extend-red.png) | Text manipulation |
| ![Multimedia keys](Assets/Images/Keyboard%20Layers/extend-light-green.png) | Multimedia keys |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/extend-grey.png) | Function and misc. keys |

#### Advanced Modifier Logic

**One-Shot Modifier** (also known as a “sticky key”):

* **Tap:** Activates a modifier key (<kbd>Shift</kbd> for example) for the next key press. It expires after some time if no key is pressed.
* **Hold:** Acts like a normal modifier key.

**Multi-Timed Modifiers:** Combines two modifiers into a single key via a rapid double tap.

**Example – Using Ctrl and Shift:**

* **Single Tap:** Activates the primary modifier key for the next key press.
* **Single Tap & Hold:** Holds the primary modifier key continuously.
* **Double Tap:** Activates both the primary and secondary modifier keys for the next key press.
* **Double Tap & Hold:** Holds both modifier keys continuously.

*Rational:* KMonad doesn't combine multiple one-shot modifiers. This implementation ensures that combinations like <kbd>Ctrl+Shift</kbd> work reliably across all applications.

### Symbols Layer

The Symbols layer (activated by holding <kbd>Left Alt</kbd>) provides ergonomic access to math operators, programming symbols, and numbers.

* **Balanced Distribution:** Spreads numerals and symbols across both hands to balance hand use.
* **Logical Grouping:** Brackets and operators are grouped to improve muscle memory.

<div align="center">

![Symbols layer](Assets/Images/Keyboard%20Layers/symbols.png)  
*Symbols layer keymap for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Numpad keys](Assets/Images/Keyboard%20Layers/extend-blue.png) | Numpad keys |
| ![Programming keys](Assets/Images/Keyboard%20Layers/extend-light-green.png) | Programming symbols |
| ![Additional math symbols](Assets/Images/Keyboard%20Layers/extend-orange.png) | Math operators |
| ![Math operators](Assets/Images/Keyboard%20Layers/extend-red.png) | Symbol pairs |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/extend-grey.png) | Misc. symbols |

## Acknowledgments & Inspirations

Øystein “DreymaR” Bech-Aase – *[Extend Extra Extreme](https://dreymar.colemak.org/layers-extend.html)*

Steve “stevep99” P – *[Seniply](https://stevep99.github.io/seniply/)*

Manna Harbour – *[Miryoku](https://github.com/manna-harbour/miryoku)*

Precondition – *[Home Row Mods](https://precondition.github.io/home-row-mods)*

Pascal Getreuer – *[Designing a Symbol Layer](https://getreuer.info/posts/keyboards/symbol-layer/index.html)*

## License & Disclaimers

Code is licensed under the **MIT License**. Assets without a specified license are in the **Public Domain**. See `LICENSE` for the full legal text.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
