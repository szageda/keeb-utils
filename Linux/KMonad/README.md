<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![KMonad logo](/Assets/Images/Meta/kmonad-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/kmonad/kmonad/blob/master/kmonad.svg" title="kmonad logo">KMonad logo created by eepykate (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils: KMonad

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

## Prerequisites

To use Keeb Utils with KMonad, your system must meet the following requirements:
- **KMonad v0.4.2 or later**: Ensure you are using a modern build of KMonad.
- **Operating System**:
    - _Linux_: Tested on Debian 12+, Ubuntu 22.04+, and Fedora 42+.
    - _Windows_: While KMonad is “Linux-first,” it can run on Windows 10+ using the official Windows binary. For a native Windows experience, see the [AutoHotkey implementation](/Windows/AutoHotkey/README.md).
    - _Permissions_: Your user must have read/write access to `/dev/uinput` and the relevant event devices (typically handled by the `input` and `uinput` groups).

## Installation

1. **Clone the repository**:

```Bash
git clone https://github.com/szageda/keeb-utils
```

2. **Identify your keyboard device**:
Before launching, you must locate your keyboard's event file (e.g., `/dev/input/eventX` or a path in `/dev/input/by-id/`). Refer to the [KMonad FAQ](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard) for help identifying the correct device.

3. **Configure the input source**:
Open `keeb-utils.kbd` and update the input field with your device path:

```Lisp
(defcfg
  input  (device-file "/dev/input/by-id/your-device-here")
  output (uinput-sink "KMonad Output")
)
```

4. **Start KMonad by pointing to the configuration file**:

```Bash
kmonad ~/path/to/keeb-utils/Linux/KMonad/keeb-utils.kbd
```

## Usage and Automation

To maintain the KMonad process in the background, choose one of the following methods:
- **Systemd**: Use the official KMonad systemd service for a persistent, boot-level daemon.
- **Terminal Multiplexer**: Run KMonad inside a tmux session for easy monitoring and manual restarts.
- **Manual Stop**: Use <kbd>Ctrl+C</kbd> in the terminal to terminate the process and return your keyboard to its standard hardware behavior.
