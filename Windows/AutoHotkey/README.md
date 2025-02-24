<div align="center">
<h1>Keeb Utils – AutoHotkey README</h1>

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![AutoHotkey logo](/Assets/Images/Meta/autohotkey-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/AutoHotkey/AutoHotkey/blob/v1.1/source/resources/icon_main.ico" title="autohotkey logo">AutoHotkey logo created by AutoHotkey developers (GPLv3)</a>
</div>

## Table of Contents

[1. About](#1-about)  
[2. Installation](#2-installation)  
[3. Configuration](#3-configuration)  
. . [3.1. AutoHotkey](#31-autohotkey)  
. . [3.2. Keeb Utils Configuration File](#32-keeb-utils-configuration-file)  
[4. Startup](#4-startup)

## 1. About

> *AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc. Define hotkeys for the mouse and keyboard, remap keys or buttons and autocorrect-like replacements.*

— *www.autohotkey.com*, AutoHotkey, [link](https://www.autohotkey.com/)

## 2. Installation

This repository doesn not package or distribute AutoHotkey binaries required to run the Keeb Utils configuration files. It is your responsibility to install the required software version.

> [!TIP]
> An alternative solution to AutoHotkey on Windows is KMonad—see [KMonad](/Linux/KMonad/README.md#5-installation-windows).

1. Install AutoHotkey from [www.AutoHotkey.com](https://www.autohotkey.com) (or use the portable version).

2. Donwload the contents of this repository to your computer.

3. Extract the contents of `keeb-utils-main.zip`.

## 3. Configuration

### 3.1. AutoHotkey

#### Start Keeb Utils automatically on Windows logon

1. Create a shortcut of `keeb-utils\Windows\AutoHotkey\keeb-utils.ahk`.

2. Move the shortcut to `%AppData%\Microsoft\Windows\Start Menu\Programs\Startup`.

### 3.2. Keeb Utils Configuration File

#### Load the Dvorak keyboard layout by default

1. Open `keeb-utils-main\Windows\AutoHotkey\keeb-utils.ahk` in a text editor.

2. Comment (insert `;;`) the line ending with `colemak-dh-ansi.ahk`.

3. Uncomment (remove `;;`) the line ending with `dvorak-ansi.ahk`.

4. Save your changes.

## 4. Startup

1. Navigate to `keeb-utils\Windows\AutoHotkey`

2. Double click `keeb-utils.ahk`

> [!NOTE]
> The scripts support AutoHotkey version 2.0. While running them under version 1.0 may be possible, you may experience problems or erratic behavior.
