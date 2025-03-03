<div align="center">
<h1>Keeb Utils – KMonad README</h1>

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![KMonad logo](/Assets/Images/Meta/kmonad-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/kmonad/kmonad/blob/master/kmonad.svg" title="kmonad logo">KMonad logo created by eepykate (CC-BY-SA 4.0)</a>
</div>

## Table of Contents

[1. About](#1-about)  
[2. Installation (Linux)](#2-installation-linux)  
[3. Configuration (Linux)](#3-configuration-linux)  
. . [3.1. KMonad](#31-kmonad)  
. . [3.2. Keeb Utils Configuration File](#32-keeb-utils-configuration-file)  
[4. Startup (Linux)](#4-startup-linux)  
. . [4.1. Errors and Troubleshooting](#41-errors-and-troubleshooting)  
[5. Installation (Windows)](#5-installation-windows)  
[6. Configuration (Windows)](#6-configuration-windows)  
. . [6.1. KMonad](#61-kmonad)  
. . [6.2. Keeb Utils Configuration Files](#62-keeb-utils-configuration-file)  
[7. Startup (Windows)](#7-startup-windows)  
[8. Additional Configuration (platform agnostic)](#8-additional-configuration-platform-agnostic)

## 1. About

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

## 2. Installation (Linux)

This repository doesn not package or distribute KMonad binaries required to run the Keeb Utils configuration file. It is your responsibility to install the required software version.

1. Install KMonad using:

    - the latest [binary release](https://github.com/kmonad/kmonad/releases).
    - a [compiliation method](https://github.com/kmonad/kmonad/blob/master/doc/installation.md#compilation).

2. Clone the contents of this repository to your computer.

```shell
git clone https://github.com/szageda/keeb-utils.git
```

## 3. Configuration (Linux)

### 3.1. KMonad

1. Place the KMonad binary into one of your `$PATH` variable's directory.

> [!TIP]
> Placing KMonad into your `$PATH` helps, so you don't have to type the absolute path to the executable every time you want to run it.

2. [Configure uinput permissions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-get-uinput-permissions).

> [!NOTE]
> You may skip this step, but keep in mind, all commands involving KMonad must be run as sudo.

### 3.2. Keeb Utils Configuration File

1. Open `keeb-utils-main/Linux/KMonad/keeb-utils.kbd` in a text editor.

2. Configure your keyboard device:

    1. Change the value of `input (device-file "value")` following the KMonad [instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).
    2. Save your changes.

## 4. Startup (Linux)

Start KMonad using `keeb-utils.kbd` configuration file, for example: 

```shell
kmonad ~/keeb-utils-main/Linux/KMonad/keeb-utils.kbd
```

> [!NOTE]
> KMonad must be restarted (stopped and started) everytime you make changes to a configuration file.

### 4.1. Errors and Troubleshooting

#### kmonad: command not found

**Explanation:** The `kmonad` binary is not in a directory of your `$PATH` variable.  
**Troubleshooting:**

1. Move `kmonad` into a directory in your `$PATH`, for example:

    - Local user: `~/.local/bin` or `~/.bin`
    - System-wide: `/usr/local/bin` or `/usr/bin`

2. Make `kmonad` executable:

    - Local user: `chmod u+x kmonad`
    - System-wide: `chmod +x kmonad`

___

#### openFd: does not exist (No such file or directory)

**Explanation:** KMonad cannot find the keyboard device file.  
**Troubleshooting:**

1. Follow the [KMonad wiki](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard) to find your keyboard device file.

2. Open `keeb-utils-main/Linux/KMonad/keeb-utils.kbd` in a text editor.

3. Configure your keyboard device:

    1. Replace `value` with `/path/to/keyboard-device-file` inside `input (device-file "value")`
    2. Save your changes.

___

#### openFd: permission denied (Permission denied)

**Explanation:** uinput permissions aren't configured or `kmonad` wasn't executed as sudo.  
**Troubleshooting:**

- Configure uinput permissions—refer to [KMonad wiki: How do I get uinput permissions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-get-uinput-permissions).

- Run `sudo kmonad ~/keeb-utils-main/Linux/KMonad/keeb-utils.kbd`

## 5. Installation (Windows)

KMonad is compatible with Windows, but I view it as a “Linux first” solution, so I only use Keeb Utils with KMonad on Windows when I need to conduct tests.

This repository doesn not package or distribute KMonad binaries required to run the Keeb Utils configuration file. It is your responsibility to install the required software version.

1. Install KMonad using:

    - the latest [binary release](https://github.com/kmonad/kmonad/releases).
    - the [Windows compiliation method](https://github.com/kmonad/kmonad/blob/master/doc/installation.md#windows-environment).

2. Donwload the contents of this repository to your computer.

3. Extract the contents of `keeb-utils-main.zip`.

## 6. Configuration (Windows)

### 6.1. KMonad

Place the KMonad binary into one your `%PATH%` variable's directory.

> [!TIP]
> Placing KMonad into your `%PATH%` helps, so you don't have to type the absolute path to the executable every time you want to run it.

### 6.2. Keeb Utils Configuration File

1. Open `keeb-utils-main\Linux\KMonad\keeb-utils.kbd` in a text editor.

2. Configure your input and output:

    1. Comment (insert `;;`) the lines starting with `input` and `output` under the `Linux` section.
    2. Uncomment (remove `;;`) the lines starting with `input` and `output` under the `Windows` section.
    3. Save your changes.

> [!NOTE]
> In contrast to Linux, on Windows you don't have to configure the keyboard device; i.e., leave the `input` and `output` fields as they are.

## 7. Startup (Windows)

Start KMonad using `keeb-utils.kbd` configuration file, for example: 

```
kmonad C:\Users\%username%\Downloads\keeb-utils-main\Linux\KMonad\keeb-utils.kbd
```

> [!NOTE]
> KMonad must be restarted (stopped and started) everytime you make changes to a configuration file.

## 8. Additional Configuration (platform agnostic)

#### Load the Dvorak keyboard layout by default

1. Open `keeb-utils.kbd` in a text editor.
2. Copy the entire section of the Dvorak keyboard layout definition starting with `(deflayer dvorak-ansi` to the closing `)` and place it above the Colemak-DH layout definition (`(deflayer colemak-dh-ansi`).
3. Save your changes.
4. Start KMonad (or restart it if running already).
