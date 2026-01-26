<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![KMonad logo](/Assets/Images/Meta/kmonad-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/kmonad/kmonad/blob/master/kmonad.svg" title="kmonad logo">KMonad logo created by eepykate (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils – KMonad

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

## Requirements

- **KMonad 0.4.2+**: Ensure you have the latest version installed. The minimal required version is 0.4.2.
- **Linux (Debian 12+, Ubuntu 22.04+, Fedora 42+ etc.)**: The configuration file is tested on modern Linux distributions.
- **Windows 10+**: I view KMonad as a “Linux first” solution; while running it on Windows is possible, make sure you download the Windows binary.

## Installation

1. **Download the scripts**: Clone or download this repository to your computer.
```shell
git clone https://github.com/szageda/keeb-utils
```
2. **Launch KMonad**: Start KMonad with the configuration file.
```shell
kmonad ~/Downloads/keeb-utils-main/Linux/KMonad/keeb-utils.kbd
```

> [!WARNING]
> **You must configure your input device before KMonad can start: Change the value of `input (device-file "value")` following the KMonad [instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).**

## Usage

To keep KMonad running in the background, use one of the following methods:
- Run KMonad inside a [tmux](https://github.com/tmux/tmux) session.
- Run KMonad as a [systemd service](https://github.com/kmonad/kmonad/blob/master/startup/kmonad%40.service).
