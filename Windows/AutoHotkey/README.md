<div align="center">
<h1>Keeb Utils – AutoHotkey README</h1>

![Project avatar](/Assets/Images/Meta/autohotkey-logo-128.png)
</div>

## Table of Contents

[1. About](#1-about)  
. . [1.1. Installation](#11-installation)  
. . [1.2. Configuration](#12-configuration)

## 1. About

> *AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc. Define hotkeys for the mouse and keyboard, remap keys or buttons and autocorrect-like replacements.*

— *www.autohotkey.com*, AutoHotkey, [link](https://www.autohotkey.com/)

### 1.1. Installation

1. Install AutoHotkey (or use the portable version).
2. Download the contents of this repository to your computer.
3. Extract the downloaded .zip archive.
4. Start Keeb Utils by navigating to `keeb-utils\Windows\AutoHotkey` and double clicking `keeb-utils.ahk`.

> [!NOTE]
> The scripts support AutoHotkey version 2.0. While running them under version 1.0 may be possible, you may experience problems or erratic behavior.

> [!TIP]
> An alternative solution to AutoHotkey on Windows is KMonad—see [KMonad](/Linux/KMonad/README.md#2-windows).

### 1.2. Configuration

**Start Keeb Utils automatically on Windows login:**

1. Create a shortcut of `keeb-utils\Windows\AutoHotkey\keeb-utils.ahk`.
2. Move the shortcut to `%AppData%\Microsoft\Windows\Start Menu\Programs\Startup`.

**Change to load the Dvorak keyboard layout by default:**

1. Navigate to `keeb-utils\Windows\AutoHotkey`.
2. Open `keeb-utils.ahk` in a text editor.
3. Comment (insert `;;`) the line ending with `colemak-dh-ansi.ahk`.
4. Uncomment (remove `;;`) the line ending with `dvorak-ansi.ahk`.
5. Save your changes.
6. Start AutoHotkey (or reload it if running already).
