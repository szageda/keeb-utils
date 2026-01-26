<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-128.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils

Keeb Utils, “Keyboard Utilities,” is a collection of my custom keyboard layout and layers to improve keyboard ergonomics and productivity. The project was inspired by the work of others in the alternative keyboard layouts community.

Keeb Utils adheres to these key principles:
- **Keep it functional and minimal**: don't implement flashy, rarely used features that will require extra maintenance in the future.
- **Implement cross-platform solutions without sacrificing essential features**: make sure a feature provided by one software solution is possible to implement in another.
- **Maintain high modularity**: functions are declared in modules wherever possible allowing for swapping them out easily for customization.

Keeb Utils employs technics provided by third-party software to remap the keys of your keyboard on the operating system level:
- On **Linux** via **KMonad**
- On **Windows** via **AutoHotkey**

## Keyboard Layout

I use the Colemak-DH keyboard layout. Colemak was created in 2006 for the English language. In 2015, the DH ergonomic modification improved the layout. This change swapped the D and H keys to reduce side-to-side finger movement.

More information on Colemak: https://colemak.com/  
More information on the DH ergo mod: https://colemakmods.github.io/mod-dh

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/colemak-dh-ansi.png)  
*Colemak-DH keymap for ANSI 101/104-key keyboards*

</div>

## Keyboard Layers

To extend the functionality or make certain functions more accessible, Keeb Utils implements extra keyboard layers which can be used by special key combinations. Similarly to using <kbd>Ctrl</kbd>+<kbd>C</kbd> to copy text, <kbd>Alt</kbd>+<kbd>Tab</kbd> to switch between the active window, and so on.

### Extend Layer

The Extend layer is designed for a keyboard-focused workflow in mind by providing quick access to essential text editing and navigation features. Activating this layer with a designated key (<kbd>Caps Lock</kbd> by default) allows you to perform these tasks directly from the alphanumeric keys.

**Advantages to using Extend**:
- **Stay on the home row**: Keep your hands in the typing position. This reduces wrist movement and fatigue.
- **Faster navigation**: Use <kbd>U</kbd>, <kbd>N</kbd>, <kbd>E</kbd>, and <kbd>I</kbd> as arrow keys (QWERTY <kbd>I</kbd>, <kbd>J</kbd>, <kbd>K</kbd>, and <kbd>L</kbd>).
- **Power editing**: Access <kbd>Home</kbd>, <kbd>End</kbd>, <kbd>PgUp</kbd>, <kbd>PgDn</kbd>, <kbd>Del</kbd>, and <kbd>Backspace</kbd> without reaching across the keyboard.
- **Integrated shortcuts**: Perform complex actions like "Select Next Word" or "Close Tab" using home row modifiers or tap dance actions.

<div align="center">

![Extend layer](Assets/Images/Keyboard%20Layers/extend.png)  
*Extend layer keymap for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Navigation keys](Assets/Images/Keyboard%20Layers/extend-blue.png) | Navigation keys |
| ![Ctrl shortcuts](Assets/Images/Keyboard%20Layers/extend-green.png) | Ctrl shortcuts |
| ![Modifiers](Assets/Images/Keyboard%20Layers/extend-orange.png) | Modifiers |
| ![Sticky keys](Assets/Images/Keyboard%20Layers/extend-sticky.png) | Sticky keys (see below this table) |
| ![Multi-Sticky keys](Assets/Images/Keyboard%20Layers/extend-multi-sticky.png) | Sticky keys combined with multi-tap (see below this table) |
| ![Text manipulation keys](Assets/Images/Keyboard%20Layers/extend-red.png) | Text manipulation |
| ![Multimedia keys](Assets/Images/Keyboard%20Layers/extend-light-green.png) | Multimedia keys |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/extend-grey.png) | Function and misc. keys |

#### Advanced Modifiers (Sticky Keys)

**Shift Key**:
- **Tap**: Activates <kbd>Shift</kbd> for the next key press only. It expires after 450 ms if no key is pressed.
- **Hold**: Acts like a normal <kbd>Shift</kbd> key.

**Multi-Modifier Combinations** (Ctrl/Alt and Shift):  
You can combine modifiers by tapping them quickly (within 175 ms).

**Using Ctrl**:
- **Single Tap**: Activates <kbd>Ctrl</kbd> for the next key press.
- **Single Tap & Hold**: Holds <kbd>Ctrl</kbd> down continuously.
- **Double Tap**: Activates both <kbd>Ctrl</kbd> and <kbd>Shift</kbd> for the next key press.
- **Double Tap & Hold**: Holds both <kbd>Ctrl</kbd> and <kbd>Shift</kbd> down continuously.

**Using Alt**:
- **Single Tap**: Activates <kbd>Alt</kbd> for the next key press.
- **Single Tap & Hold**: Holds <kbd>Alt</kbd> down continuously.
- **Double Tap**: Activates both <kbd>Alt</kbd> and <kbd>Shift</kbd> for the next key press.
- **Double Tap & Hold**: Holds both <kbd>Alt</kbd> and <kbd>Shift</kbd> down continuously.

**Why this is used**: KMonad doesn't combine multiple sticky modifiers. This implementation ensures that combinations like <kbd>Ctrl</kbd>+<kbd>Shift</kbd> work reliably across all applications.

### Symbols Layer

The Symbols layer provides quick access to commonly used symbols and punctuation marks by holding a designated key (<kbd>Left Alt</kbd> by default) improving typing ergonomics and reducing errors.

**Advantages to using Symbols**:
- **Reduces finger travel**: You can access symbols like `<`, `-`, `>`, and `( )` without leaving the home row.
- **Balanced workflow**: Symbols are distributed across both hands to prevent “one-handed” strain.
- **Ergonomic placement**: Brackets and math operators are grouped logically, making them easier to remember than the standard Shift+Number combinations.
- **Fewer errors**: Because your hands stay in the home position, you are less likely to lose your place or make a typo when switching between text and code.

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
