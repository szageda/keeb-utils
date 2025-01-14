/*
 * File        : keeb-utils-toggle.ahk
 * Description : AutoHotkey state toggle for Keeb Utils
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * The hotkey disables all scripts (layouts and layers) with a single
 * key combination, eliminating the need to right-click the AutoHotkey
 * tray icon and select "Suspend Hotkeys."
 * 
 * The "SuspendExempt" directive allows AutoHotkey to recognize the key
 * combination even when suspended, and toggling states changes the tray
 * icon to reflect AutoHotkey's status.
 *
 * Usage:
 *  The script file must be loaded when AutoHotkey starts. Suspending (or
 *  activating) AutoHotkey is achieved by pressing Scroll Lock+Q.
 */

#SuspendExempt
ScrollLock & sc010::    ;; Scroll Lock+Q
{
    Suspend -1  ;; 0 = activate, 1 = suspend, -1 = switch to opposite state

    ;; Update the tray icon and tip
    if (A_IsSuspended = 1) {
        A_IconTip := "Keeb Utils is disabled"
        TraySetIcon("Icons\suspended.ico",, true)
    } else {
        A_IconTip := "Keeb Utils is active"
        TraySetIcon("Icons\active.ico",, false)
    }
}
#SuspendExempt False
