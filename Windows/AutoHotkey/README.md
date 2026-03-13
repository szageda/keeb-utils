<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![AutoHotkey logo](/Assets/Images/Meta/autohotkey-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/AutoHotkey/AutoHotkey/blob/v1.1/source/resources/icon_main.ico" title="autohotkey logo">AutoHotkey logo created by AutoHotkey developers (GPLv3)</a>
</div>

# Keeb Utils: AutoHotkey

> *AutoHotkey is a free, open-source scripting language for Windows that allows users to easily create small to complex scripts for all kinds of tasks such as: form fillers, auto-clicking, macros, etc. Define hotkeys for the mouse and keyboard, remap keys or buttons and autocorrect-like replacements.*

— *www.autohotkey.com*, AutoHotkey, [link](https://www.autohotkey.com/)

> [!NOTE]
> For a cross-platform alternative that also runs on Windows, see the [KMonad documentation](/Linux/KMonad/README.md#windows).

## Prerequisites

To run these scripts, your system must meet the following requirements:
* **AutoHotkey v2.0 or later**: These scripts are optimized for v2.0. Using v1.1 or earlier may result in syntax errors or unexpected behavior.
* **Windows 10 or 11**: While Windows 7 and 8 are likely compatible, these scripts are tested primarily on modern Windows environments.

## Installation

1.  **Download the repository**: Clone the repository or download and extract the ZIP archive to your local machine.
2.  **Navigate to the directory**: Open File Explorer and go to `keeb-utils-main/Windows/AutoHotkey/`.
3.  **Launch the script**: Double-click `keeb-utils.ahk`.

## Usage

Keeb-Utils runs as a background process. 

* **System Tray**: Look for the Keeb-Utils icon in the system tray to confirm the script is active.
* **Exit**: Right-click the system tray icon and select **Exit** to stop the script.
* **Administrator Privileges**: To ensure the script functions in all windows (including Task Manager or installers), **run AutoHotkey as Administrator**. Without elevated privileges, the script cannot intercept keys in applications that have higher permission levels than the script itself.
