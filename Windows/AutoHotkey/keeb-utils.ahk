/*
 * File        : keeb-utils.ahk
 * Description : Entry-point to AutoHotkey implementation of Keeb Utils
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * This file configures AutoHotkey and the behavior of scripts. All scripts
 * loaded by this file run with the settings defined here.
 */

;;
;; AutoHotkey General Settings
;;

;; Define the AutoHotkey version required to run this script.
;; https://www.autohotkey.com/docs/v2/lib/_Requires.htm
;; (default "")
#Requires AutoHotkey v2.0

;; Determine whether a script is allowed to run again when it
;; is already running. If this directive is unspecified in a
;; script, it will behave as though set to Prompt.
;; https://www.autohotkey.com/docs/v2/lib/_SingleInstance.htm
;; (default Force)
#SingleInstance Force

;; Set the maximum number of simultaneous threads. Although
;; a value of 1 is allowed, it is not recommended because
;; it would prevent new hotkeys from launching whenever
;; the script is displaying a message box or other dialog.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreads.htm
;; (default 10)
#MaxThreads 32

;; Set the maximum number of simultaneous threads per hotkey or
;; hotstring. This setting is used to control how many "instances"
;; of a given hotkey or hotstring subroutine are allowed to exist
;; simultaneously.
;; https://www.autohotkey.com/docs/v2/lib/_MaxThreadsPerHotkey.htm
;; (default 1)
#MaxThreadsPerHotkey 4

;; Set AutoHotkey's process priority level. This setting can also
;; be applied to individual scripts. The value is visible in Task
;; Manager.
;; https://www.autohotkey.com/docs/v2/lib/ProcessSetPriority.htm
;; (default Normal)
ProcessSetPriority "High"

;; Prevents the script from exiting automatically when
;; its last thread completes, allowing it to stay running
;; in an idle state.
;; https://www.autohotkey.com/docs/v2/lib/Persistent.htm
;; (default True)
Persistent True

;;
;; Input Settings
;;

;; Set the interval in seconds before a warning dialog is triggered
;; by consecutive hotkey execution; i.e. key spamming.
;; 'A_MaxHotkeysPerInterval' isn't active if 'A_HotkeyInterval' is 0.
;; https://www.autohotkey.com/docs/v2/lib/A_MaxHotkeysPerInterval.htm
;; (default 2000)
A_HotkeyInterval := 0
;; (default 70)
A_MaxHotkeysPerInterval := 70

;; Default command sending mode, makes 'Send' synonymous
;; with 'SendEvent' or 'SendPlay'. If 'SendMode' is
;; 'Input' (the default), Windows might ignore remapped
;; keys if CPU speed is too slow.
;; https://www.autohotkey.com/docs/v2/lib/SendMode.htm
;; (default Input)
SendMode "Event"

;; Set the delay that will occur after each keystroke sent
;; by 'Send' or 'ControlSend'. If 'SetKeyDelay' is not used,
;; the default delay is 10 for the traditional 'SendEvent'
;; mode.
;; https://www.autohotkey.com/docs/v2/lib/SetKeyDelay.htm
;; (default 10)
SetKeyDelay -1, -1

;;
;; Debug Settings
;;

;; Enables or disables line logging or displays the script
;; lines most recently executed.
;; https://www.autohotkey.com/docs/v2/lib/ListLines.htm
;; (default 1)
ListLines 0

;; Displays script info and a history of the most recent
;; keystrokes and mouse clicks.
;; https://www.autohotkey.com/docs/v2/lib/KeyHistory.htm
;; (default 40)
KeyHistory 0

;;
;; Keeb Utils Configuration
;;

;; Keyboard Layouts
;; Keymaps defining the physical key arrangements and character
;; output for the primary alphanumeric layer.
#Include Layouts\colemak-dh-ansi.ahk
;;#Include Layouts\dvorak-ansi.ahk
;;#Include Layouts\galliope-ansi.ahk

;; Keyboard Layers
;; Sets of keymaps that modify the default alphanumeric behavior
;; when a specific layer-toggle is active.
;;
;; Note: The load order of layers is important, because
;; subsequent keymaps can override the ones before them.
#Include Layers\symbols.ahk
#Include Layers\numpad.ahk
#Include Layers\extend.ahk

;; Modules
;; Optional utilities for extended functionality that do not
;; interfere with core layouts and layers.
#Include Modules\keeb-utils-menu.ahk
#Include Modules\keeb-utils-toggle.ahk
