/*
 * File        : keeb-utils-toggle.ahk
 * Description : AutoHotkey state toggle (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * The hotkey disables all scripts with a single key combination,
 * eliminating the need to right-click AutoHotkey's tray icon
 * then selecting "Suspend Hotkeys".
 *
 * #SuspendExempt allows AutoHotkey to recognize the key combination
 * even when it's in suspended state. UpdateIcon() changes the
 * tray icon and tooltip to reflect AutoHotkey's status.
 *
 * Usage:
 * The script file must be loaded when AutoHotkey starts.
 * Suspending or activating AutoHotkey is achieved by pressing
 * Scroll Lock+Q.
 */

#Include keeb-utils-icon.ahk

;; Disable Scroll Lock states, so the LED won't light up on your device.
SetScrollLockState "AlwaysOff"

#SuspendExempt
ScrollLock & sc010::    ;; Scroll Lock+Q
{
    ;; Toggle between suspended and active states:
    ;; 0 = activate
    ;; 1 = suspend
    ;; -1 = switch to opposite state
    Suspend -1
    UpdateIcon()
}
#SuspendExempt False
