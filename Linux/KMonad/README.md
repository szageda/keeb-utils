<div align="center">

![Project avatar](../../Assets/Images/Meta/avatar-64.png) ![KMonad logo](../../Assets/Images/Meta/kmonad-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/kmonad/kmonad/blob/master/kmonad.svg" title="kmonad logo">KMonad logo created by eepykate (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils: KMonad

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

## Prerequisites

To use Keeb Utils with KMonad, your system must meet these requirements:

- **KMonad v0.4.2 or later:** Use a recent version of KMonad.
- **Operating system:**
  - *Linux:* Tested on Debian 12+, Ubuntu 22.04+, and Fedora 42+.
  - *Windows:* KMonad is designed primarily for Linux, but it can run on Windows 10+ using the official Windows binary. For a native Windows experience, see the [AutoHotkey implementation](../../Windows/AutoHotkey/README.md).
- **Linux permissions:** Your user must have read/write access to `/dev/uinput` and the relevant event devices. This is typically handled by the `input` and `uinput` groups.

## Installation

1. Clone the repository, or download and extract the ZIP archive.
2. Identify your keyboard device by its event file or ID (for example, `/dev/input/event#` or a path under `/dev/input/by-id/`). See the [KMonad FAQ](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard) for help.
3. In `keeb-utils.kbd`, set the input device path:

```lisp
(defcfg
  input  (device-file "/dev/input/by-id/your-device-here")
  output (uinput-sink "KMonad Output")
)
```

4. Start KMonad and point it to `keeb-utils.kbd`:

```bash
kmonad ~/path/to/keeb-utils/Linux/KMonad/keeb-utils.kbd
```

## Usage and automation

To keep KMonad running in the background, choose one of these methods:

- **Systemd:** Use the official [KMonad systemd service](https://github.com/kmonad/kmonad/blob/master/startup/kmonad%40.service) to run it as a persistent service.
- **Terminal multiplexer:** Run KMonad in a [tmux](https://tmux.app/) session so you can monitor it and restart it manually.
- **Manual stop:** Press <kbd>Ctrl+C</kbd> in the terminal to stop KMonad and return your keyboard to its standard hardware behavior.
