/*
 * File        : sticky-key.ahk
 * Description : AutoHotkey Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025, Gergely Szabo
 * License     : MIT
 * 
 * Implement a sticky key function to change the behavior of a modifier key
 * with support for tap and hold actions:
 *  - Tap & Release: Sticky the modifier for the next key press.
 *  - Tap & Hold: Hold the modifier while the physical key is held.
 * 
 * Notes:
 *  - The sticky key expires after its defined timeout period.
 * 
 * Example Usage:
 *  Shift & sc020::StickyKey(450, "Ctrl")
 */

StickyKey(stickyTimeout := 450, keyName := "") {

    ;; Extract the scan code from the key that called the function.
    ;; Important: The function must be mapped to a key defined using its scan
    ;; code (e.g., "sc020").
    triggerKey := A_ThisHotkey
    triggerKey := RegExMatch(triggerKey, "sc\d+", &OutputVar)
    triggerKey := OutputVar[]

    ;; On Tap
    Send "{Blind}{" keyName " Down}"
    Sleep stickyTimeout

    ;; On Hold
    if !KeyWait(triggerKey) {
        Send "{Blind}{" keyName " Down}"
    }

    ;; On Release
    KeyWait triggerKey
    Send "{" keyName " Up}"
}
