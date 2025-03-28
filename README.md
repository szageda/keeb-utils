<div align="center">
<h1>Keeb Utils</h1>

![Project avatar](/Assets/Images/Meta/avatar-128.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>
</div>

## Table of Contents

[1. Introduction](#1-introduction)  
[2. Keyboard Layouts](#2-keyboard-layouts)  
. . [2.1. Colemak-DH](#21-colemak-dh)  
. . [2.2. Dvorak](#22-dvorak)  
[3. The Utils](#3-the-utils)  
. . [3.1. Utility Layer](#31-utility-layer)  
. . [3.2. Symbols Layer](#32-symbols-layer)  
[4. Supported Platforms and Software](#4-supported-platforms-and-software)  
. . [4.1. Linux](#41-linux)  
. . [4.2. Windows](#42-windows)  
[5. Credits and Inspiration](#5-credits-and-inspiration)  
[6. License](#6-license)

## 1. Introduction

Keeb Utils, short for “Keyboard Utilities,” is my personal project for sharing custom keyboard tweaks for Windows and Linux. This repository offers adjustments to enhance typing efficiency, ergonomics, and comfort, making it a useful resource for keyboard enthusiasts and those new to keyboard programming. The works of others inspired me to share my keyboard configuration, too—details are found under [5. Credits and Inspiration](#5-credits-and-inspiration).

Keeb Utils adheres to two key principles:
- Keep it minimal and functional.
- Implement cross-platform solutions without sacrificing essential features.

## 2. Keyboard Layouts

Keeb Utils is configured to load Colemak-DH by default. You must edit the configuration files to load a different layout on program startup—this is explained in the given software solution's `README.md` file.

### 2.1. Colemak-DH

I use a keyboard layout known as “Colemak-DH“ (which is occasionally referred to as “Colemak Mod-DH“). Colemak was originally created in 2006 primarily for the English lanaguage. It was enhanced in 2015 with the addition of the “DH“ modification, which involved swapping the D and H keys to minimize the side-to-side movement of the index fingers.

*More information on Colemak: https://colemak.com/*  
*More information on Colemak Mod DH: https://colemakmods.github.io/mod-dh*

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/colemak-dh-ansi.png)  
*Colemak-DH keymap for ANSI 101/104-key keyboards*

</div>

Note that some symbol keys (<kbd>[</kbd> <kbd>]</kbd> <kbd>=</kbd>) have been moved due to personal preference.

### 2.2. Dvorak

The Dvorak keyboard layout, sometimes also called “Dvorak Simplified Keyboard”, was patented in the 1930s by August Dvorak as a more ergonomic and faster altenative to QWERTY. To design his keyboard layout for the English language, August Dvorak used letter frequency and physiology of the hands.

*More information on Dvorak: https://dvorak-keyboard.com*

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/dvorak-ansi.png)  
*Dvorak keymap for ANSI 101/104-key keyboards*

</div>

## 3. The Utils

### 3.1 Utility Layer

I implement various adjustments and functions on an extra layer, called “Utility“, to enhance my keyboard-focused workflow, resulting in improved efficiency and comfort. The Utility layer can be activated using a specific key (I prefer <kbd>Caps Lock</kbd>), allowing you to access text editing and navigation features on the alphanumeric keys without shifting your hands from their home positions.

<div align="center">

![Utility layer](Assets/Images/Keyboard%20Layers/utility.png)  
*Utility layer function map for ANSI 101/104-key keyboards*

</div>

| Key Category  | Description |
| :-----------: | ----------- |
| ![Navigation keys](Assets/Images/Keyboard%20Layers/utility-blue.png) | Navigation keys (e.g., <kbd>Left</kbd> <kbd>Up</kbd> <kbd>PgDn</kbd> etc.) |
| ![Ctrl shortcuts](Assets/Images/Keyboard%20Layers/utility-green.png) | Ctrl shortcuts (e.g., <kbd>Ctrl+C</kbd> <kbd>Ctrl+S</kbd> <kbd>Ctrl+X</kbd> etc.) |
| ![Modifiers](Assets/Images/Keyboard%20Layers/utility-orange.png) | Modifiers (e.g., <kbd>Win</kbd> <kbd>Shift</kbd> <kbd>Ctrl</kbd> etc.) |
| ![Sticky keys](Assets/Images/Keyboard%20Layers/utility-sticky.png) | Sticky keys **\*** |
| ![Text manipulation keys](Assets/Images/Keyboard%20Layers/utility-red.png) | Text manipulation (e.g., <kbd>Backspace</kbd> <kbd>Caps Lock</kbd> <kbd>Tab</kbd> etc.) |
| ![Multimedia keys](Assets/Images/Keyboard%20Layers/utility-light-green.png) | Multimedia keys (e.g., <kbd>Play</kbd> <kbd>Vol. Down</kbd> <kbd>Vol. Up</kbd> etc.) |
| ![Misc. keys](Assets/Images/Keyboard%20Layers/utility-grey.png) | Function and misc. keys | 

**\*** **Sticky keys:**

These keys behave differently depending on whether they are:
- **Tapped:** They become “sticky” for 350 ms to allow for <kbd>Ctrl</kbd>, <kbd>Alt</kbd> and other shortcut combinations with <kbd>Shift</kbd> that are not available on the Utility layer, for example:
    - <kbd>Ctrl+W</kbd>: Close your current tab.
    - <kbd>Ctrl+T</kbd>: Open a new tab.
    - <kbd>Ctrl+N</kbd>: Create a new file.
    - <kbd>Ctrl+O</kbd>: Open a new file.
    - Shortcuts in WYSIWYG text editors: <kbd>Ctrl+B</kbd> for bold text, <kbd>Ctrl+I</kbd> for italic text, <kbd>Ctrl+U</kbd> for underlined text etc.
- **Held:** They function like regular <kbd>Ctrl</kbd> and <kbd>Alt</kbd> keys allowing, for example, advanced navigation and text manipulation:
    - <kbd>Ctrl+Right</kbd>: Jump to the next word.
    - <kbd>Ctrl+Shift+Right</kbd>: Select the next word.
    - <kbd>Ctrl+End</kbd>: Jump to the end of the current page.
    - <kbd>Alt+Tab</kbd>: Cycle through your open windows.
    - <kbd>Alt+Shift+Tab</kbd>: Cycle through your open windows in reverse order.
    - <kbd>Alt+F4</kbd>: Close your current window.

### 3.2. Symbols Layer

“Symbols” layer places commonly used symbols and punctuation marks onto an extra layer this helps with making less mistakes while typing as well as using “smart” punctuation marks instead of “dumb” ones ("" vs “”). The Symbols layer can be activated using a specific key (I prefer <kbd>Left Alt</kbd>).

<div align="center">

![Symbols layer](Assets/Images/Keyboard%20Layers/symbols.png)  
*Symbols layer symbol map for ANSI 101/104-key keyboards*

</div>

## 4. Supported Platforms and Software

I primarily develop Keeb Utils for GNU/Linux and Windows operating systems as these are the platforms I use daily—Linux on my personal devices and Windows on my work computer. Additionally, I must consider that I'm restricted from installing arbitrary software on my work machine; a business justification is typically required for any installation intended for personal use. Therefore, I tend to focus on open-source and portable software.

> [!WARNING]
> **I do not supply the installers or any binary files associated with the Keeb Utils configuration files found in this repository. It is your responsibility to obtain the necessary software binaries.**

### 4.1. Linux

**Supported Software:**
- **KMonad** version >=0.4.1

### 4.2. Windows

**Supported Software:**
- **AutoHotkey** version >=2.0
- KMonad version >=0.4.1 (AutoHotkey is preferred)

## 5. Credits and Inspiration

**Shai Coleman**—*[Colemak keyboard layout](https://colemak.com)*  
**Steve “stevep99” P**—*[Seniply](https://stevep99.github.io/seniply/)*, *[Mod-DH](https://colemakmods.github.io/mod-dh/)*  
**Øystein “DreymaR” Bech-Aase**—*[The Big Bag Theory](https://dreymar.colemak.org/)*  
**Manna Harbour**—*[Miryoku](https://github.com/manna-harbour/miryoku)*  
**Precondition**—*[Home Row Mods](https://precondition.github.io/home-row-mods)*  
**Pascal Getreuer**—*[Designing a Symbol Layer](https://getreuer.info/posts/keyboards/symbol-layer/index.html)*

## 6. License

All files under the `Assets` directory without a specified license are Public Domain, the rest are licensed under the MIT license—refer to `LICENSE` in the root directory.

You may change and/or distribute all files contained in this repository under their license requirements.

**Disclaimer:**  
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
