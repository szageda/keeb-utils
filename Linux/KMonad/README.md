<div align="center">
<h1>KEEB UTILS - KMonad README</h1>

![Project avatar](/Assets/Images/Meta/kmonad-logo-128.png)
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

1. Download the KMonad executable and place it into one of your `$PATH` variable's directory.
2. Clone the contents of this repository to your computer.

```shell
git clone https://github.com/szageda/keeb-utils.git
```

3. Go into the directory of the cloned repository.

```shell
cd keeb-utils
```

4. Start KMonad from your command line pointing it to the KMonad configuration file (e.g., `kmonad ~/keeb-utils/Linux/KMonad/keeb-utils.kbd`).

> [!TIP]
> Placing KMonad into your $PATH makes sure you don't have to type the absolute path to the executable every time you want to run it.

> [!IMPORTANT]
> If you didn't configure the uinput permissions as instructed by KMonad, you must run it with sudo priviliges, and if KMonad isn't in your root user's $PATH variable you should use absolute paths to execute it and load the config file (e.g. `sudo /home/user/.local/bin/kmonad /home/user/keeb-utils/Linux/KMonad/keeb-utils.kbd`).

> [!WARNING]
> You must manually configure your keyboard device in the configuration file—see [1.2. Configuration](#12-configuration). KMonad fails to start otherwise.

### 1.2. Configuration

**Configure your keyboard device:**

1. Navigate to `keeb-utils/Linux/KMonad/`.
2. Open `keeb-utils.kbd` in a text editor.
3. Change the value of `input (device-file "value")` following the KMonad [wiki instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).
4. Save your changes.
5. Start KMonad.

## 2. Windows

KMonad is compatible with Windows, but I view it as a “Linux first” solution, so I only use Keeb Utils with KMonad on Windows when I need to conduct tests. Additionally, AutoHotkey has shown strong compatibility with various Windows versions.

### 2.1. Installation

1. Download the KMonad executable and place it into one of your `%PATH%` variable's folder.
2. Download the contents of this repository to your computer.
3. Extract the downloaded .zip archive.
4. Start KMonad from the command prompt pointing it to the KMonad configuration file (e.g. `C:\Users\%username%\Downloads\kmonad C:\Users\%username%\Downloads\keeb-utils\Linux\KMonad\keeb-utils.kbd`).

> [!TIP]
> Placing KMonad into your %PATH% makes sure you don't have to type the absolute path to the executable every time you want to run it.

> [!WARNING]
> You must manually configure your keyboard device in the configuration file—see [2.2. Configuration](#22-configuration).

### 2.2. Configuration

**Configure your operating system input:**

1. Navigate to `keeb-utils\Linux\KMonad\`.
2. Open `keeb-utils.kbd` in a text editor.
3. Comment (`;;`) the lines starting with `input` and `output` under the `Linux` section.
4. Uncomment (remove `;;`) the lines starting with `input` and `output` under the `Windows` section.
5. Save your changes.
6. Start KMonad.

> [!NOTE]
> In contrast to Linux, on Windows you don't have to configure the keyboard device; i.e., leave the `input` and `output` fields as they are.
