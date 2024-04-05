<div align="center">
<h1>KEEB UTILS - KMonad README</h1>
</div>

## Table of Contents

[1 About](#1-about)  
. . [1.1 Installation](#11-installation)  
. . [1.2 Configuration](#12-configuration)  
[2 Windows](#2-windows)  
. . [2.1 Installation](#21-installation)  
. . [2.2 Configuration](#22-configuration)

## 1 About

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

### 1.1 Installation

1. Make sure you have already downloaded/installed KMonad.

2. Download or clone the contents of this repository to your computer.

3. Skip this step if you cloned the repository, otherwise, if you downloaded the data as a zip archive (or tar, tar.gz etc.) extract it.

4. Start KMonad from your command line pointing it to the KMonad configuration file (e.g. `kmonad ~/Downloads/keeb-utils/Linux/KMonad/colemak-dh-ansi-keeb-utils.kbd`).

**Caveats:**

- KMonad must be run as administrator (sudo) if you didn't follow the instructions from KMonad to [configure the uinput permissions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-get-uinput-permissions).
- If KMonad isn't in your root user's path (relevant on Debian), use absolute paths to run KMonad and load the config file (e.g. `sudo /home/user/.local/bin/kmonad /path/to/keeb-utils/Linux/KMonad/colemak-dh-ansi-keeb-utils.kbd`).
- You must manually configure your keyboard device in the configuration file – see [1.2 Configuration](#12-configuration).
- In contrast to the AutoHotkey Utility layer (Windows) implementation, the KMonad configuration file lacks the mouse wheel scroll functions on the <kbd>,</kbd> and <kbd>.</kbd> keys.

### 1.2 Configuration

You must edit the keyboard configuration file to **configure your keyboard:**

1. Navigate to `keeb-utils\Linux\KMonad\`.

2. Open `colemak-dh-ansi-keeb-utils.kbd` in a text editor.

3. Change the ‘value’ of `input (device-file "value")` following the KMonad wiki [instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).

4. Save your changes.

5. Start/restart KMonad.

## 2 Windows

KMonad is also compatible with Windows; however, I consider it to be a ‘Linux first’ solution, therefore, I do not run Keeb Utils via KMonad on Windows unless I need to test something. Also, AutoHotkey has demonstrated high-level compatibility with Windows versions.

### 2.1 Installation

1. Make sure you have already downloaded/installed the **Windows version** of KMonad.

2. Download or clone the contents of this repository to your computer.

3. Skip this step if you cloned the repository, otherwise, if you downloaded the data as a zip archive (or tar, tar.gz etc.) extract it.

4. Start KMonad from the command prompt pointing it to the KMonad configuration file (e.g. `C:\Users\username\Downloads\KMonad C:\path\to\keeb-utils\Linux\KMonad\colemak-dh-ansi-keeb-utils.kbd`**\***).

**\*** If you place the KMonad executable into a folder in your `PATH` variable, you won't have to use the absolute path.

**Caveats:**

- You must manually configure your OS input in the configuration file – see [2.2 Configuration](#22-configuration).
- In contrast to the AutoHotkey Utility layer implementation, the KMonad configuration file lacks the following functions: 
  - The mouse wheel scroll functions on the <kbd>,</kbd> and <kbd>.</kbd> keys.
  - Mouse scroll wheel to change the sound volume.

### 2.2 Configuration

#### Configure your operating system input

1. Navigate to `keeb-utils\Linux\KMonad\`.

2. Open `colemak-dh-ansi-keeb-utils.kbd` in a text editor.

3. Comment (`;;`) the lines starting with `input` and `output` under the `Linux` section.

4. Uncomment (remove `;;`) the lines starting with `input` and `output` under the `Windows` section.

5. Save your changes.

6. Start/restart KMonad.
