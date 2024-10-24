<div align="center">
<h1>KEEB UTILS - KMonad README</h1>
</div>

## Table of Contents

[1. About](#1-about)  
. . [1.1. Installation](#11-installation)  
. . [1.2. Configuration](#12-configuration)  
[2. Windows](#2-windows)  
. . [2.1. Installation](#21-installation)  
. . [2.2. Configuration](#22-configuration)

## 1. About

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

### 1.1. Installation

1. Make sure you have already downloaded/installed KMonad.
2. Download or clone the contents of this repository to your computer.
3. If you cloned the repository, you can skip this step. However, if you downloaded the data as a zip archive (or in formats like tar or tar.gz), please extract it.
4. Start KMonad from your command line pointing it to the KMonad configuration file (e.g. `kmonad ~/Downloads/keeb-utils/Linux/KMonad/keeb-utils.kbd`).

> [!IMPORTANT]
> If you didn't configure the uinput permissions as instructed by KMonad, you must run it with sudo priviliges, and if KMonad isn't in your root user's path you should use absolute paths to execute it and load the config file (e.g. `sudo /home/user/.local/bin/kmonad /path/to/keeb-utils/Linux/KMonad/keeb-utils.kbd`).

> [!WARNING]
> You must manually configure your keyboard device in the configuration file – see [1.2 Configuration](#12-configuration).

### 1.2. Configuration

#### Configure your keyboard:

1. Navigate to `keeb-utils/Linux/KMonad/`.
2. Open `keeb-utils.kbd` in a text editor.
3. Change the ‘value’ of `input (device-file "value")` following the KMonad [wiki instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).
4. Save your changes.
5. Start KMonad.

## 2. Windows

KMonad is compatible with Windows, but I view it as a ‘Linux first’ solution, so I only use Keeb Utils with KMonad on Windows when I need to conduct tests. Additionally, AutoHotkey has shown strong compatibility with various Windows versions.

### 2.1. Installation

1. Make sure you have already downloaded/installed KMonad.
2. Download or clone the contents of this repository to your computer.
3. If you cloned the repository, you can skip this step. However, if you downloaded the data as a zip archive (or in formats like tar or tar.gz), please extract it.
4. Start KMonad from the command prompt pointing it to the KMonad configuration file (e.g. `C:\Users\username\Downloads\KMonad C:\path\to\keeb-utils\Linux\KMonad\keeb-utils.kbd`).

> [!NOTE]
> If you place the KMonad executable into a folder in your `PATH` variable, you won't have to use the absolute path.

> [!WARNING]
> You must manually configure your keyboard device in the configuration file – see [1.2 Configuration](#22-configuration).

### 2.2. Configuration

#### Configure your operating system input

1. Navigate to `keeb-utils\Linux\KMonad\`.
2. Open `keeb-utils.kbd` in a text editor.
3. Comment (`;;`) the lines starting with `input` and `output` under the `Linux` section.
4. Uncomment (remove `;;`) the lines starting with `input` and `output` under the `Windows` section.
5. Save your changes.
6. Start KMonad.
