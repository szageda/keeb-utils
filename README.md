<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-128.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils

Keeb Utils, “Keyboard Utilities”, is a collection of my custom keyboard layout and layers for Windows and Linux, aimed at improving typing efficiency, ergonomics, and comfort. It's designed for both keyboard enthusiasts and newcomers, inspired by the work of others.

Keeb Utils adheres to these key principles:

- **Keep it functional and minimal:** don't implement flashy, rarely used features that will require extra maintenance in the future.
- **Implement cross-platform solutions without sacrificing essential features:** make sure a feature provided by one software solution is possible to implement in another.
- **Maintain high modularity:** functions are declared in modules wherever possible allowing for swapping them out easily for testing and other purposes.

Keeb Utils employs technics provided by third-party software to remap the keys of your keyboard on the operating system level:

- On **Linux** via **KMonad** version >=**0.4.1**
- On **Windows** via **AutoHotkey** version >=**2.0**

## Keyboard Layout

I use a keyboard layout known as “Colemak-DH“ (which is occasionally referred to as “Colemak Mod-DH“). Colemak was originally created in 2006 primarily for the English lanaguage. It was enhanced in 2015 with the addition of the “DH“ modification, which involved swapping the D and H keys to minimize the side-to-side movement of the index fingers.

More information on Colemak: https://colemak.com/  
More information on Colemak Mod DH: https://colemakmods.github.io/mod-dh

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/colemak-dh-ansi.png)  
*Colemak-DH keymap for ANSI 101/104-key keyboards*

</div>

## Keyboard Layers

To extend the functionality or make certain functions more accessible, Keeb Utils implements keyboard layers which can be used by special key combinations. Similarly to using <kbd>Ctrl</kbd>+<kbd>C</kbd> to copy text, <kbd>Alt</kbd>+<kbd>Tab</kbd> to switch between the active window, and so on.

### Extend Layer

The Extend layer is designed for a keyboard-focused workflow in mind by providing quick access to essential text editing and navigation features. Activating this layer with a designated key (<kbd>Caps Lock</kbd> by default) allows you to perform these tasks directly from the alphanumeric keys.

<div align="center">

![Extend layer](Assets/Images/Keyboard%20Layers/extend.png)  
*Extend layer keymap for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Navigation keys](Assets/Images/Keyboard%20Layers/extend-blue.png) | Navigation keys (e.g., <kbd>Left</kbd> <kbd>Up</kbd> <kbd>PgDn</kbd> etc.) |
| ![Ctrl shortcuts](Assets/Images/Keyboard%20Layers/extend-green.png) | Ctrl shortcuts (e.g., <kbd>Ctrl</kbd>+<kbd>C</kbd> <kbd>Ctrl</kbd>+<kbd>V</kbd> etc.) |
| ![Modifiers](Assets/Images/Keyboard%20Layers/extend-orange.png) | Modifiers (e.g., <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Ctrl</kbd> etc.) |
| ![Sticky keys](Assets/Images/Keyboard%20Layers/extend-sticky.png) | Sticky keys<b>*</b> |
| ![Multi-Sticky keys](Assets/Images/Keyboard%20Layers/extend-multi-sticky.png) | Sticky keys combined with multi-tap<b>**</b> |
| ![Text manipulation keys](Assets/Images/Keyboard%20Layers/extend-red.png) | Text manipulation (e.g., <kbd>Backspace</kbd> <kbd>Caps Lock</kbd> <kbd>Tab</kbd> etc.) |
| ![Multimedia keys](Assets/Images/Keyboard%20Layers/extend-light-green.png) | Multimedia keys (e.g., <kbd>Play</kbd> <kbd>Vol. Down</kbd> <kbd>Vol. Up</kbd> etc.) |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/extend-grey.png) | Function and misc. keys |

<b>*</b> **Sticky key implemented with** <kbd>Shift</kbd>:

- **Tapped:** <kbd>Shift</kbd> becomes sticky until the next key press.
- **Held:** Holds <kbd>Shift</kbd> until the key is released.

*Note: The stickiness expires when the timeout is over (450 milliseconds by default).*

<b>**</b> **Combination of multi-tap and sticky keys with** <kbd>Ctrl</kbd>, <kbd>Ctrl</kbd>+<kbd>Shift</kbd> **and** <kbd>Alt</kbd>, <kbd>Alt</kbd>+<kbd>Shift</kbd>:

- **Single Tap:** Sticky the modifier for the next key press then release.
    - **Single Tap & Hold:** Hold the modifier.
- **Double Tap:** Sticky both modifiers (<kbd>Ctrl</kbd> or <kbd>Alt</kbd> with <kbd>Shift</kbd>) for the next key press then release.
    - **Double Tap & Hold:** Hold both modifiers (<kbd>Ctrl</kbd> or <kbd>Alt</kbd> with <kbd>Shift</kbd>).

*Notes:*
- *A double tap must be registered within 175 milliseconds otherwise the multi-tap function expires. The stickiness expires when the timeout is over (450 milliseconds by default).*
- *This is the solution to fix the issue of* <kbd>Ctrl</kbd>/<kbd>Alt</kbd> *and* <kbd>Shift</kbd> *not combining with the* `sticky-key` *function in KMonad (see: https://github.com/kmonad/kmonad/discussions/1013).*

### Symbols Layer

The Symbols layer provides quick access to commonly used symbols and punctuation marks by holding a designated key (<kbd>Left Alt</kbd> by default) improving typing ergonomics and reducing errors.

<div align="center">

![Symbols layer](Assets/Images/Keyboard%20Layers/symbols.png)  
*Symbols layer keymap for ANSI 101/104-key keyboards*

</div>

## Credits and Inspiration

**Shai Coleman** – *[Colemak keyboard layout](https://colemak.com)*  
**Steve “stevep99” P** – *[Seniply](https://stevep99.github.io/seniply/)*, *[Mod-DH](https://colemakmods.github.io/mod-dh/)*  
**Øystein “DreymaR” Bech-Aase** – *[The Big Bag Theory](https://dreymar.colemak.org/)*  
**Manna Harbour** – *[Miryoku](https://github.com/manna-harbour/miryoku)*  
**Precondition** – *[Home Row Mods](https://precondition.github.io/home-row-mods)*  
**Pascal Getreuer** – *[Designing a Symbol Layer](https://getreuer.info/posts/keyboards/symbol-layer/index.html)*

## License

All files under the `Assets` directory without a specified license are Public Domain, the rest are licensed under the MIT license – refer to `LICENSE` in the root directory.

You may change and/or distribute all files contained in this repository under their license requirements.

**Disclaimer:**  
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
