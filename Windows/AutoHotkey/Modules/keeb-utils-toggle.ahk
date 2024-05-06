/*
 * File        : keeb-utils-toggle.ahk
 * Description : AutoHotkey state toggle for Keeb Utils
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * The hotkey allows all scripts (keyboard layouts and layers) to be
 * disabled by a single key combination without right clicking on the
 * AutoHotkey tray icon then selecting 'Suspend Hotkeys'. Thanks to the
 * 'SuspendExempt' directive, AutoHotkey listens to the key combination
 * even if it is currently suspended. Toggling states also changes the
 * tray icon to indicate AutoHotkey's status.
 */

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
