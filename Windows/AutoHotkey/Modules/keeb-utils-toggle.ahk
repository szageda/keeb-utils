/*
 * File        : keeb-utils-toggle.ahk
 * Description : Global state toggle for Keeb Utils
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script defines a global hotkey (Scroll Lock + Q) to toggle
 * between 'Active' and 'Suspended' states. The toggle remains
 * functional even while the script is suspended.
 */

#Include keeb-utils-icon.ahk

;; Force Scroll Lock to remain off to prevent the physical LED from toggling.
SetScrollLockState "AlwaysOff"

;; #SuspendExempt ensures this hotkey is not disabled
;; when the script is suspended.
#SuspendExempt
ScrollLock & sc010::
{
    Suspend -1      ;; -1 = switch to the opposite state
    UpdateIcon()
}
#SuspendExempt False
