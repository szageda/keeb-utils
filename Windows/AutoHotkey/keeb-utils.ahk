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

;; Define the AutoHotkey version required to run this script. When sharing a
;; script or posting code online, using this directive allows anyone who finds
;; the code to readily identify which version of AutoHotkey it was intended
;; for. https://www.autohotkey.com/docs/v2/lib/_Requires.htm
;; (default "")
#Requires AutoHotkey v2.0

;; Allow a script to run again. If this directive is unspecified in a script,
;; it will behave as though set to Prompt. This directive is ignored when any
;; of the following command line switches are used: /force /restart
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

;; Buffer rather than ignore keypresses when their #MaxThreadsPerHotkey limit
;; has been reached. The main use for this directive is to increase the
;; responsiveness of the keyboard's auto-repeat feature.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreadsBuffer.htm
;; (default True)
#MaxThreadsBuffer False

;; Keep scripts running in the background, they will stay running after the
;; startup completes and all other threads have exited.
;; https://www.autohotkey.com/docs/v2/lib/Persistent.htm
;; (default True)
Persistent True

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
;;
;; IMPORTANT: Care should be taken not to make the setting too lenient because
;; if you ever inadvertently introduce an infinite loop of keystrokes (via a
;; Send function that accidentally triggers other hotkeys), your computer could
;; become unresponsive due to the rapid flood of keyboard events.
;; https://www.autohotkey.com/docs/v2/lib/A_MaxHotkeysPerInterval.htm
;; (default 2000)
A_HotkeyInterval := 0
;; (default 70)
A_MaxHotkeysPerInterval := 70

;; Default command sending mode, makes Send synonymous with SendEvent or
;; SendPlay. Since SendMode also changes the mode of Click, MouseMove,
;; MouseClick and MouseClickDrag, there may be times when you wish to use a
;; different mode for a particular mouse event. If SendMode is Input (the
;; default), Windows might ignore remapped keys if CPU speed is slow.
;; https://www.autohotkey.com/docs/v2/lib/SendMode.htm
;; (default Input)
SendMode "Event"

;; Set the delay that will occur after each keystroke sent by Send or
;; ControlSend. If SetKeyDelay is not used, the default delay is 10 for the
;; traditional SendEvent mode and -1 for SendPlay mode. SetKeyDelay is not
;; obeyed by SendInput; there is no delay between keystrokes in that mode.
;; This same is true for Send when SendMode Input is in effect.
;; https://www.autohotkey.com/docs/v2/lib/SetKeyDelay.htm
;; (default 10)
SetKeyDelay -1, -1

;; -- DEBUGGING SETTINGS -----------------------------------------------------
;;
;; These settings are useful for debugging scripts. They can be used to
;; determine why a script is not working as expected, or to help identify the
;; source of an error.

;; Enables or disables line logging or displays the script lines most
;; recently executed. If ListLines is not used to affect line logging,
;; the default setting is 1 (true).
;; https://www.autohotkey.com/docs/v2/lib/ListLines.htm
;; (default 1)
ListLines 0

;; Displays script info and a history of the most recent keystrokes and
;; mouse clicks. This feature is intended to help debug scripts and hotkeys.
;; It can also be used to detect the scan code of a non-standard keyboard key
;; using the steps described at the bottom of the key list page (knowing the
;; scan code allows such a key to be made into a hotkey).
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
