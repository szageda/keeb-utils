/*
 * File        : keeb-utils-toggle.ahk
 * Description : AutoHotkey state toggle (Keeb Utils)
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script creates a hotkey to toggle between AutoHotkey's suspended and
 * active states using 'Scroll Lock+Q'. AutoHotkey listens for the hotkey even
 * when it's suspended.
 */

#Include keeb-utils-icon.ahk

;; Disable Scroll Lock states, so the LED won't light up on your device.
SetScrollLockState "AlwaysOff"

#SuspendExempt
ScrollLock & sc010::
{
    Suspend -1      ;; -1 = switch to the opposite state
    UpdateIcon()
}
#SuspendExempt False
