/*
 * File        : keeb-utils.ahk
 * Description : Entry-point to AutoHotkey implementation of Keeb Utils
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * This file is responsible for configuring AutoHotkey and the behavior of
 * loaded scripts -- all subsequently loaded scripts run with the settings
 * defined here.
 */

;; -- AUTOHOTKEY GENERAL SETTINGS ---------------------------------------------

;; Define the AutoHotkey version required to run this script.
;; https://www.autohotkey.com/docs/v2/lib/_Requires.htm
;; (default "")
#Requires AutoHotkey v2.0

;; Determine whether a script is allowed to run again when it is already
;; running. If this directive is unspecified in a script, it will behave
;; as though set to Prompt.
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
;; This setting is used to control how many "instances" of a given hotkey or
;; hotstring subroutine are allowed to exist simultaneously.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreadsPerHotkey.htm
;; (default 1)
#MaxThreadsPerHotkey 3

;; Set AutoHotkey's process priority level. This setting can also be applied
;; to individual scripts. The value is visible in Task Manager.
;; https://www.autohotkey.com/docs/v2/lib/ProcessSetPriority.htm
;; (default Normal)
ProcessSetPriority "High"

;; -- AUTOHOTKEY INPUT SETTINGS -----------------------------------------------

;; Set the interval in seconds before a warning dialog is triggered by
;; consecutive hotkey execution, i.e. key spamming. A_MaxHotkeysPerInterval
;; is not affected, if A_HotkeyInterval is 0. The value 0 disables the warning
;; dialog entirely.
;; https://www.autohotkey.com/docs/v2/lib/A_MaxHotkeysPerInterval.htm
;; (default 2000)
A_HotkeyInterval := 0
;; (default 70)
A_MaxHotkeysPerInterval := 70

;; Default command sending mode, makes Send synonymous with SendEvent or
;; SendPlay. If SendMode is Input (the default), Windows might ignore
;; remapped keys if CPU speed is slow.
;; https://www.autohotkey.com/docs/v2/lib/SendMode.htm
;; (default Input)
SendMode "Event"

;; Set the delay that will occur after each keystroke sent by Send or
;; ControlSend. If SetKeyDelay is not used, the default delay is 10 for the
;; traditional SendEvent mode and -1 for SendPlay mode.
;; https://www.autohotkey.com/docs/v2/lib/SetKeyDelay.htm
;; (default 10)
SetKeyDelay -1, -1

;; -- DEBUGGING SETTINGS -----------------------------------------------------
;;
;; These settings are useful for debugging scripts. They can be used to
;; determine why a script is not working as expected, or to help identify the
;; source of an error.

;; Enables or disables line logging or displays the script lines most recently
;; executed.
;; https://www.autohotkey.com/docs/v2/lib/ListLines.htm
;; (default 1)
ListLines 0

;; Displays script info and a history of the most recent keystrokes and mouse
;; clicks. This feature is intended to help debug scripts and hotkeys.
;; https://www.autohotkey.com/docs/v2/lib/KeyHistory.htm
;; (default 40)
KeyHistory 0

;; -- KEEB UTILS --------------------------------------------------------------
;;
;; Enable or disable features. Scripts on commented lines (starting with ;;)
;; are not loaded and therefore remain disabled.

;; Keyboard Layouts
#Include Layouts\colemak-dh-ansi.ahk
;;#Include Layouts\dvorak-ansi.ahk

;; Extra Layers
#Include Layers\utility.ahk

;; Modules
#Include Modules\keeb-utils-menu.ahk
#Include Modules\keeb-utils-toggle.ahk
