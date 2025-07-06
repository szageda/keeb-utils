/*
 * File        : sticky-key.ahk
 * Description : AutoHotkey Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025, Gergely Szabo
 * License     : MIT
 */

/**
 * @description Implements a sticky key behavior that simulates a virtual key
 *  press with support for tap and hold actions.
 * @caution The function must be mapped to a key defined with its scan code.
 * @var {string} KeySC The scan code of the key that called the function. This
 *  is used to determine the key's physical state that initiates the tap or
 *  hold action.
 * @param {integer} timeout Duration in milliseconds to sticky KeyName when
 *  KeySC was tapped.
 * @param {string} KeyName The key to sticky with a timeout on tap, or hold
 *  while KeySC is held.
 * @returns None.
 * @example Shift & sc020::StickyKey(350, "Ctrl")
 */
StickyKey(timeout := 350, KeyName := "") {
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
