/*
 * File        : keeb-utils.ahk
 * Description : Entry-point to AutoHotkey implementation of Keeb Utils
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * This file is responsible for configuring AutoHotkey and the behavior of
 * loaded scripts.
 */

;; -- AUTOHOTKEY GENERAL SETTINGS ---------------------------------------------
;;
;; These directives and variables control the general behavior of AutoHotkey
;; and the subsequently loaded scripts.

;; Allow a script to run again. If this directive is unspecified in a script,
;; it will behave as though set to "Prompt". This directive is ignored when
;; ANY of the following command line switches are used: /force /restart
;; https://www.autohotkey.com/docs/v2/lib/_SingleInstance.htm
;; (default Force)
#SingleInstance Force

;; Set the maximum number of simultaneous threads. Although a value of 1 is
;; allowed, it is not recommended because it would prevent new hotkeys from
;; launching whenever the script is displaying a message box or other dialog.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreads.htm
;; (default 10)
#MaxThreads 32

;; Set the maximum number of simultaneous threads per hotkey or hotstring.
;; This setting is used to control how many "instances" of a given hotkey
;; or hotstring subroutine are allowed to exist simultaneously.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreadsPerHotkey.htm
;; (default 1)
#MaxThreadsPerHotkey 3

;; Buffer rather than ignore keypresses when their "#MaxThreadsPerHotkey"
;; limit has been reached. The main use for this directive is to increase
;; the responsiveness of the keyboard's auto-repeat feature.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreadsBuffer.htm
;; (default True)
#MaxThreadsBuffer False

;; Set the interval in seconds before a warning dialog is triggered by
;; consecutive hotkey execution, i.e. key spamming. "A_MaxHotkeysPerInterval"
;; is not affected, if "A_HotkeyInterval" is 0.
;;
;; IMPORTANT: Care should be taken not to make the setting too lenient because
;; if you ever inadvertently introduce an infinite loop of keystrokes (via a
;; "Send" function that accidentally triggers other hotkeys), your computer
;; could become unresponsive due to the rapid flood of keyboard events.
;; https://www.autohotkey.com/docs/v2/lib/A_MaxHotkeysPerInterval.htm
;; (default 2000)
A_HotkeyInterval := 0
;; (default 70)
A_MaxHotkeysPerInterval := 300

;; Set the default icon tip (text on mouse hover) on AutoHotkey startup.
;; If blank, the script's name is used instead.
;; https://www.autohotkey.com/docs/v2/Variables.htm#IconTip
;; (default "")
A_IconTip := "Keeb Utils is active"

;; Keep scripts running in the background, they will stay running
;; after the startup completes and all other threads have exited.
;; https://www.autohotkey.com/docs/v2/lib/Persistent.htm
;; (default True)
Persistent True

;; Install the keyboard hook. The keyboard hook monitors keystrokes for the
;; purpose of activating hotstrings and any keyboard hotkeys not supported
;; by RegisterHotkey (which is a function built into the operating system).
;; It also supports a few other features such as the "InputHook" function.
;; https://www.autohotkey.com/docs/v2/lib/InstallKeybdHook.htm
;; (default True, False)
InstallKeybdHook True, True

;; Set AutoHotkey's process priority level. This setting can also be
;; applied to individual scripts. The value is visible in Task Manager.
;; https://www.autohotkey.com/docs/v2/lib/ProcessSetPriority.htm
;; (default Normal)
ProcessSetPriority "High"

;; Default command sending mode, makes "Send" synonymous with "SendEvent" or
;; "SendPlay". Since "SendMode" also changes the mode of "Click", "MouseMove",
;; "MouseClick" and "MouseClickDrag", there may be times when you wish to use
;; a different mode for a particular mouse event. If "SendMode" is "Input"
;; (the default), Windows might ignore remapped keys if CPU speed is too slow.
;; https://www.autohotkey.com/docs/v2/lib/SendMode.htm
;; (default Input)
SendMode "Event"

;; Set the tray icon on AutoHotkey startup. Changing the tray icon also changes
;; the icon displayed by "InputBox" and subsequently-created GUI windows.
;; Compiled scripts are also affected even if a custom icon was specified at
;; the time of compiling.
;; https://www.autohotkey.com/docs/v2/lib/TraySetIcon.htm
;; (default ())
TraySetIcon("Icons\active.ico",, false)

;; -- DEBUGGING & TROUBLESHOOTING ---------------------------------------------
;;
;; These settings don't have an effect if "SendMode" is "Input" with
;; the exception of "KeyHistory" and "ListLines".

;; Enables or disables key history. This feature is intended to help
;; debug scripts and hotkeys. It can also be used to detect the scan
;; code of a non-standard keyboard key.
;; https://www.autohotkey.com/docs/v2/lib/KeyHistory.htm
;; (default 40)
KeyHistory 0

;; Enables or disables line logging or displays the script
;; lines most recently executed.
;; https://www.autohotkey.com/docs/v2/lib/ListLines.htm
;; (default 1)
ListLines 0

;; Sets the delay that will occur after each keystroke
;; sent by "Send" or "ControlSend".
;; https://www.autohotkey.com/docs/v2/lib/SetKeyDelay.htm
;; (default 10)
SetKeyDelay -1, -1

;; -- KEEB UTIL MODULES -------------------------------------------------------
;;
;; Enable or disable features. Scripts (modules) on commented lines
;; are not loaded and therefore remain disabled.

;; Keyboard Layouts
#Include %A_ScriptDir%\Layouts\colemak-dh-ansi.ahk

;; Extra Layers
#Include %A_ScriptDir%\Layers\utility.ahk

;; Extra Scripts
#Include %A_ScriptDir%\Modules\keeb-utils-menu.ahk
#Include %A_ScriptDir%\Modules\keeb-utils-toggle.ahk
