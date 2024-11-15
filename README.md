<div align="center">
<h1>KEEB UTILS</h1>

![Project avatar](Assets/Images/Meta/avatar-256.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon</a>
</div>

## Table of Contents

[1. Introduction](#1-introduction)  
[2. Keyboard Layout](#2-keyboard-layout)  
[3. The Utils](#3-the-utils)  
[4. Supported Platforms and Software](#4-supported-platforms-and-software)  
. . [4.1. Linux](#41-linux)  
. . [4.2. Windows](#42-windows)  
[5. Credits and Inspiration](#5-credits-and-inspiration)  
[6. License](#6-license)

## 1. Introduction

Keeb Utils, short for “Keyboard Utilities,” is my personal project focused on sharing custom keyboard tweaks for Windows and Linux. This repository features adjustments aimed at enhancing efficiency and comfort. It serves as a valuable resource for keyboard enthusiasts seeking to improve their typing experience and as a starting point for those interested in keyboard programming. After exploring various alternative layouts and experimenting with different alphanumeric functions, I was inspired to create this solution, drawing on the work of others—details are in the [5. Credits and Inspiration](#5-credits-and-inspiration) section.

Keeb Utils adheres to two key principles:
- Keep it minimal and functional.
- Implement cross-platform solutions without sacrificing essential features.

## 2. Keyboard Layout

I use a keyboard layout known as “Colemak-DH“ (which is occasionally referred to as “Colemak Mod-DH“). This layout was originally created in 2006 and was enhanced in 2015 with the addition of the “DH“ modification, which involved swapping the D and H keys to minimize the side-to-side movement of the index fingers.

<div align="center">

![Colemak-DH keyboard layout](Assets/Images/Keyboard%20Layouts/colemak-dh-ansi.png)  
*Colemak-DH keymap for ANSI 101/104-key keyboards*

</div>

Note that some symbol keys (<kbd>[</kbd> <kbd>]</kbd> <kbd>=</kbd>) have been moved due to personal preference.

## 3. The Utils

I implement various adjustments and functions on an extra layer—“Utility“—to enhance my keyboard-focused workflow, resulting in improved efficiency and comfort. The Utility layer can be activated using a specific key (I prefer <kbd>Caps Lock</kbd>), allowing you to access text editing and navigation features on the alphanumeric keys without shifting your hands from their home positions.

<div align="center">

![Utility layer](Assets/Images/Keyboard%20Layers/utility.png)  
*Utility layer function map for ANSI 101/104-key keyboards*

</div>

## 4. Supported Platforms and Software

I primarily develop Keeb Utils for GNU/Linux and Windows operating systems as these are the platforms I use daily—Linux on my personal devices and Windows on my work computer. Additionally, I must consider that I'm restricted from installing arbitrary software on my work machine; a business justification is typically required for any installation intended for personal use. Therefore, I tend to focus on open-source and portable software.

> [!WARNING]
> I do not supply the installers or any binary files associated with the Keeb Utils configuration files found in this repository. It is your responsibility to obtain the necessary software binaries.

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
