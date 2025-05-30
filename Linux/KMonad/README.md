<div align="center">

![Project avatar](/Assets/Images/Meta/avatar-64.png) ![KMonad logo](/Assets/Images/Meta/kmonad-logo-64.png)

<a href="https://www.flaticon.com/free-icons/computer-hardware" title="computer hardware icons">Computer hardware icons created by Rian Maulana - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://www.flaticon.com/free-icons/settings" title="settings icons">Settings icons created by Freepik - Flaticon (CC-BY-SA 4.0)</a>  
<a href="https://github.com/kmonad/kmonad/blob/master/kmonad.svg" title="kmonad logo">KMonad logo created by eepykate (CC-BY-SA 4.0)</a>
</div>

# Keeb Utils – KMonad

> *KMonad offers advanced customization features such as layers, multi-tap, tap-hold, and much more. These features are usually available at the hardware level on the QMK-firmware enabled keyboards. However, KMonad allows you to enjoy such features in virtually any keyboard by low-level system manipulations.*

— *README.md*, KMonad, [link](https://github.com/kmonad/kmonad)

## Installation & Startup

### Linux

> [!IMPORTANT]
> **This repository does not package or distribute the KMonad binary required to run the Keeb Utils configuration file. It is your responsibility to install the required software version.**

1. Install KMonad using:

    - the latest [binary release](https://github.com/kmonad/kmonad/releases).
    - a [compiliation method](https://github.com/kmonad/kmonad/blob/master/doc/installation.md#compilation).

2. Clone the contents of this repository to your computer.

```shell
git clone https://github.com/szageda/keeb-utils.git
```
3. Load `keeb-utils.kbd` with KMonad.

```shell
kmonad ~/Downloads/keeb-utils-main/Linux/KMonad/keeb-utils.kbd
```
> [!WARNING]
> **You must configure your input device before KMonad can load: Change the value of `input (device-file "value")` following the KMonad [instructions](https://github.com/kmonad/kmonad/blob/master/doc/faq.md#q-how-do-i-know-which-event-file-corresponds-to-my-keyboard).**

> [!IMPORTANT]
> If you haven't configured the uinput permissions for your user, you must run KMonad as sudo.

> [!TIP]
> Placing KMonad into your `$PATH` helps, so you don't have to type the absolute path to the executable every time you want to run it.

> [!NOTE]
> KMonad must be restarted (stopped and started) everytime you make changes to a configuration file.

### Windows

> [!NOTE]
> KMonad is compatible with Windows, but I view it as a “Linux first” solution, so I only use Keeb Utils with KMonad on Windows when I need to conduct tests.

> [!IMPORTANT]
> **This repository does not package or distribute the KMonad binary required to run the Keeb Utils configuration file. It is your responsibility to install the required software version.**

1. Install KMonad using:

    - the latest [binary release](https://github.com/kmonad/kmonad/releases).
    - the [Windows compiliation method](https://github.com/kmonad/kmonad/blob/master/doc/installation.md#windows-environment).

2. Donwload the contents of this repository to your computer.

3. Extract `keeb-utils-main.zip`.

3. Load `keeb-utils.kbd` with KMonad using Windows Terminal, PowerShell, or CMD.

```PowerShell
kmonad C:\Users\%username%\Downloads\keeb-utils-main\Linux\KMonad\keeb-utils.kbd
```

> [!WARNING]
> **You must configure your input method before KMonad can load: Comment (insert `;;`) the lines starting with `input` and `output` under the `Linux` section, then uncomment (remove `;;`) the lines starting with `input` and `output` under the `Windows` section.**

> [!TIP]
> To quit KMonad, use the <kbd>Ctrl</kbd>+<kbd>X</kbd> combination inside the Windows Terminal, PowerShell, or CMD window.

> [!NOTE]
> KMonad must be restarted (stopped and started) everytime you make changes to a configuration file.