<div align="center">

![Project avatar](../../Assets/Images/Meta/avatar-64.png) ![AutoHotkey logo](../../Assets/Images/Meta/autohotkey-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/AutoHotkey/AutoHotkey/blob/v1.1/source/resources/icon_main.ico" title="autohotkey logo">AutoHotkey logo created by AutoHotkey developers (GPLv3)</a>
</div>

# Keeb Utils: AutoHotkey

> *AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc. Define hotkeys for the mouse and keyboard, remap keys or buttons and autocorrect-like replacements.*

— *www.autohotkey.com*, AutoHotkey, [link](https://www.autohotkey.com/)

> [!NOTE]
> For a cross-platform alternative that also runs on Windows, see the [KMonad documentation](../../Linux/KMonad/README.md#windows).

## Prerequisites

To use Keeb Utils with AutoHotkey, your system must meet these requirements:

- **AutoHotkey v2.0 or later:** These scripts are designed for v2.0. Earlier versions may cause syntax errors or unexpected behavior.
- **Windows 10 or 11:** The scripts are tested primarily on modern Windows versions. Windows 7 and 8 may also be compatible.

## Installation

1. Clone the repository, or download and extract the ZIP archive.
2. Open `keeb-utils-main/Windows/AutoHotkey/`.
3. Double-click `keeb-utils.ahk`.

## Usage

Keeb Utils runs in the background:

- Look for the Keeb Utils icon in the system tray to confirm that the script is running.
- Alternatively, check Task Manager for `AutoHotkey64.exe`.

To close Keeb Utils, right-click its system tray icon and select **Exit**.

*Note:* AutoHotkey runs in the user context by default. It cannot intercept keys in applications running as administrator.
