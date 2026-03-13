<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-128.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils

Keeb-Utils, “Keyboard Utilities,” is a modular suite of keyboard layout and layer configurations designed to enhance typing ergonomics and productivity. This project provides a cross-platform implementation of an optimized Colemak-DH layout with advanced functional layers inspired by the work of others in the Alternative Keyboard Layouts community.

## Design Principles

Keeb-Utils adheres to the following core principles:
- **Functionality and Minimalism**: Avoids high-maintenance features in favor of reliable, essential tools.
- **Cross-Platform Parity**: Ensures features are functionally identical across different software implementations.
- **High Modularity**: Uses a modular architecture to allow for easy customization and component swapping.

## Supported Platforms

Keeb-Utils leverages third-party software to remap keys at the operating system level:
- **Linux**: Managed via [KMonad](https://github.com/kmonad/kmonad).
- **Windows**: Managed via [AutoHotkey v2](https://www.autohotkey.com/).

## Keyboard Layout

This project utilizes the **Colemak-DH** layout. Colemak-DH is an ergonomic modification of the original 2006 Colemak layout, designed to reduce lateral finger movement by relocating the <kbd>D</kbd> and <kbd>H</kbd> keys to more natural positions.

- [Learn more about Colemak](https://colemak.com/)
- [Learn more about the DH Mod](https://colemakmods.github.io/mod-dh/)

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/colemak-dh-ansi.png)  
*Colemak-DH keymap for ANSI 101/104-key keyboards*

</div>

## Functional Layers

Keeb-Utils uses layers to provide immediate access to navigation, symbols, and numeric entry without requiring significant hand movement.

### Extend Layer

The Extend layer optimizes text editing and navigation. Activating this layer (default: <kbd>Caps Lock</kbd>) maps essential functions to the home row.

**Key Benefits**:
- **Home Row Retention**: Minimizes wrist fatigue by keeping hands in the primary typing position.
- **Optimized Navigation**: Maps arrow keys to the <kbd>U</kbd> <kbd>N</kbd> <kbd>E</kbd> and <kbd>I</kbd> keys (Standard QWERTY <kbd>I</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>).
- **Integrated Shortcuts**: Accesses common actions like “Select Next Word” or “Close Tab” via home-row modifiers.

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

**One-Shot Modifier** (also known as “sticky key”):
- **Tap**: Activates a modifier key (<kbd>Shift</kbd> for example) for the next key press. It expires after 280 ms if no key is pressed.
- **Hold**: Acts like a normal modifier key.

**Multi-Timed Modifiers**: Combines two modifiers into a single key via a rapid double tap (within 120 ms).

**Example — Using Ctrl and Shift**:
- **Single Tap**: Activates the primary modifier key for the next key press.
- **Single Tap & Hold**: Holds the primary modifier key continuously.
- **Double Tap**: Activates both the primary and secondary modifier keys for the next key press.
- **Double Tap & Hold**: Holds both modifier keys continuously.

*Rational*: KMonad doesn't combine multiple one-shot modifiers. This implementation ensures that combinations like <kbd>Ctrl</kbd>+<kbd>Shift</kbd> work reliably across all applications.

### Symbols Layer

The Symbols layer (default: <kbd>Left Alt</kbd>) provides ergonomic access to punctuation and mathematical operators.

- **Balanced Distribution**: Spreads symbols across both hands to prevent strain.
- **Logical Grouping**: Brackets and operators are grouped to improve muscle memory.

<div align="center">

![Symbols layer](Assets/Images/Keyboard%20Layers/symbols.png)  
*Symbols layer keymap for ANSI 101/104-key keyboards*

</div>

### Numpad Layer

The Numpad layer enables efficient technical data entry. This is a stepped layer, accessed through the Symbols layer (<kbd>Left Alt</kbd> → <kbd>Caps Lock</kbd>).

<div align="center">

![Numpad layer](Assets/Images/Keyboard%20Layers/numpad.png)  
*Numpad layer keymap for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Numerals](Assets/Images/Keyboard%20Layers/extend-blue.png) | Numeric keys |
| ![Letters](Assets/Images/Keyboard%20Layers/extend-orange.png) | Letter keys for hexadecimal numbers and error codes |
| ![Math symbols](Assets/Images/Keyboard%20Layers/extend-red.png) | Math symbols and operators |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/extend-grey.png) | Misc. keys |

## Acknowledgments

**Shai Coleman**: *[Colemak keyboard layout](https://colemak.com)*  
**Steve “stevep99” P**: *[Seniply](https://stevep99.github.io/seniply/)* and *[Mod-DH](https://colemakmods.github.io/mod-dh/)*  
**Øystein “DreymaR” Bech-Aase**: *[The Big Bag Theory](https://dreymar.colemak.org/)*  
**Manna Harbour**: *[Miryoku](https://github.com/manna-harbour/miryoku)*  
**Precondition**: *[Home Row Mods](https://precondition.github.io/home-row-mods)*  
**Pascal Getreuer**: *[Designing a Symbol Layer](https://getreuer.info/posts/keyboards/symbol-layer/index.html)*

## License

Code is licensed under the **MIT License**. Assets without a specified license are in the **Public Domain**. See `LICENSE` for the full legal text.

**Disclaimer:**  
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
