/*
 * File        : keeb-utils.ahk
 * Description : Entry-point to AutoHotkey implementation of Keeb Utils
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * This file is responsible for configuring the general behaviour of AutoHotkey
 * scripts and loading them at software launch.
 */

;; ----------------------------------------------------------------------------
;; AUTOHOTKEY GENERAL SETTINGS

;; Allow a script to run again. If this directive is unspecified in a script,
;; it will behave as though set to 'Prompt'. This directive is ignored when any
;; of the following command line switches are used: /force /restart
;; (default Force)
#SingleInstance Force

;; Set the maximum number of simultaneous threads. Although a value of '1' is
;; allowed, it is not recommended because it would prevent new hotkeys from
;; launching whenever the script is displaying a message box or other dialog.
;; (default 10)
#MaxThreads 32

;; Set the maximum number of simultaneous threads per hotkey or hotstring. This
;; setting is used to control how many "instances" of a given hotkey or
;; hotstring subroutine are allowed to exist simultaneously.
;; (default 1)
#MaxThreadsPerHotkey 3

;; Buffer rather than ignore keypresses when their '#MaxThreadsPerHotkey' limit
;; has been reached. The main use for this directive is to increase the
;; responsiveness of the keyboard's auto-repeat feature.
;; (default True)
#MaxThreadsBuffer False

;; Set the interval in seconds before a warning dialog is triggered by
;; consecutive hotkey execution, i.e. key spamming. 'A_MaxHotkeysPerInterval'
;; is not affected, if 'A_HotkeyInterval' is 0.
;;
;; IMPORTANT: Care should be taken not to make the setting too lenient because
;; if you ever inadvertently introduce an infinite loop of keystrokes (via a
;; 'Send' function that accidentally triggers other hotkeys), your computer
;; could become unresponsive due to the rapid flood of keyboard events.
;; (default 2000)
A_HotkeyInterval := 0
;; (default 70)
A_MaxHotkeysPerInterval := 300

;; Set the default icon tip (text on mouse hover) on AutoHotkey startup.
;; If blank, the script's name is used instead.
;; (default "")
A_IconTip := "Keeb Utils is active"

;; Keep scripts running in the background, they will stay running after startup
;; completes and all other threads have exited.
;; (default True)
Persistent True

;; Install the keyboard hook. The keyboard hook monitors keystrokes for the
;; purpose of activating hotstrings and any keyboard hotkeys not supported by
;; RegisterHotkey (which is a function built into the operating system). It
;; also supports a few other features such as the 'InputHook' function.
;; (default True, False)
InstallKeybdHook True, True

;; Set AutoHotkey's process priority level. This setting can also be applied to
;; individual scripts. The value is visible in Task Manager.
;; (default Normal)
ProcessSetPriority "High"

;; Default command sending mode, makes 'Send' synonymous with 'SendEvent' or
;; 'SendPlay'. Since 'SendMode' also changes the mode of 'Click', 'MouseMove',
;; 'MouseClick' and 'MouseClickDrag', there may be times when you wish to use
;; a different mode for a particular mouse event. If 'SendMode' is 'Input'
;; (the default), Windows might ignore remapped keys if CPU speed is too slow.
;; (default Input)
SendMode "Event"

;; Set the tray icon on AutoHotkey startup. Changing the tray icon also
;; changes the icon displayed by InputBox and subsequently-created GUI windows.
;; Compiled scripts are also affected even if a custom icon was specified at
;; the time of compiling.
;; (default ())
TraySetIcon("Icons\active.ico",, false)

;; ----------------------------------------------------------------------------
;; AUTOHOTKEY BENCHMARKING / DEBUGGING / TROUBLESHOOTING SETTINGS
;;
;; These settings don't have an effect if 'SendMode' is 'Input' with the
;; exception of 'KeyHistory' and 'ListLines'.

;; Enable key history and how many items to display.
;; (default 40)
KeyHistory 0

;; Enable or disable line logging.
;; (default 1)
ListLines 0

;; Set the mouse speed that will be used if unspecified in 'Click',
;; 'MouseMove', 'MouseClick', and 'MouseClickDrag'.
;; (default 2)
SetDefaultMouseSpeed 0

;; Set the delay that will occur after each keystroke sent by 'Send' or
;; 'ControlSend'.
;; (default 10)
SetKeyDelay -1, -1

;; Set the delay that will occur after each mouse movement or click.
;; (default 10)
SetMouseDelay -1

;; Set the delay that will occur after each control-modifying function.
;; (default 20)
SetControlDelay -1

;; Set the delay that will occur after each windowing function, such as
;; 'WinActivate'.
;; (default 100)
SetWinDelay -1

;; ----------------------------------------------------------------------------
;; GLOBAL HOTKEYS
;;
;; Hotkeys that must be available regardless of the loaded keyboard layout and
;; layers.

;; Suspend hotkey allows all scripts (keyboard layouts and layers) to be
;; disabled by a single key combination without having to right click on the
;; AutoHotkey tray icon and selecting 'Suspend Hotkeys'. Switching between
;; states also changes the tray icon to indicate AutoHotkey's status.
#SuspendExempt
ScrollLock & SC010::    ;; Scroll Lock + Q
{
    Suspend -1

    if (A_IsSuspended = 1) {
        A_IconTip := "Keeb Utils is disabled"
        TraySetIcon("Icons\suspended.ico",, true)
    } else {
        A_IconTip := "Keeb Utils is active"
        TraySetIcon("Icons\active.ico",, false)
    }
}
#SuspendExempt False

;; ----------------------------------------------------------------------------
;; KEEB UTILS TO LOAD
;;
;; Enable/disable features. Comment/uncomment the lines.

;; Keyboard layouts
#Include %A_ScriptDir%\Layouts\colemak-dh-ansi.ahk

;; Extra layers
#Include %A_ScriptDir%\Layers\utility.ahk
#Include %A_ScriptDir%\Layers\symbols.ahk

;; Custom tray menu
#Include %A_ScriptDir%\Modules\keeb-utils-menu.ahk
