/*
 * File        : keeb-utils-toggle.ahk
 * Description : AutoHotkey state toggle for Keeb Utils
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * The hotkey disables all scripts with a single key combination,
 * eliminating the need to right-click AutoHotkey's tray icon then
 * selecting "Suspend Hotkeys."
 * 
 * The "SuspendExempt" directive allows AutoHotkey to recognize the key
 * combination even when it's in the suspended state. Toggling states changes
 * the tray icon using UpdateIcon() to reflect AutoHotkey's status.
 *
 * Usage:
 *  The script file must be loaded when AutoHotkey starts. Suspending (or
 *  activating) AutoHotkey is achieved by pressing Scroll Lock+Q.
 */

#Include keeb-utils-icon.ahk

#SuspendExempt
ScrollLock & sc010::            ;; Scroll Lock+Q
{
    ;; Toggle between suspended and active states:
    ;; 0 = activate, 1 = suspend, -1 = switch to opposite state
    Suspend -1

    ;; Update the tray icon and tip
    UpdateIcon()
}
#SuspendExempt False
