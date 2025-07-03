/*
 * File        : sticky-key.ahk
 * Description : AutoHotkey Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025, Gergely Szabo
 * License     : MIT
*/

/**
 * @brief Implements a sticky key behavior that simulates a key press with
 *  support for tap and hold actions.
 * @param {integer} timeout Duration in milliseconds to sticky KeyName.
 * @param {string} KeyName The key to sticky with timeout on tap or hold.
 * @returns None.
 * @example Shift & sc020::StickyKey(350, "Ctrl")
 */

StickyKey(timeout := 350, KeyName := "") {
    ;; Retrieve the scan code of the key that called the function.
    ;; This is used to determine the key's physical state.
    KeySC := A_ThisHotkey
    KeySC := RegExMatch(KeySC, "sc\d+", &OutputVar)
    KeySC := OutputVar[]

    ;; On Tap
    Send "{Blind}{" KeyName " Down}"
    Sleep timeout

    ;; On Hold
    if !KeyWait(KeySC) {
        Send "{Blind}{" KeyName " Down}"
    }

    ;; On Release
    KeyWait KeySC
    Send "{" KeyName " Up}"
}
