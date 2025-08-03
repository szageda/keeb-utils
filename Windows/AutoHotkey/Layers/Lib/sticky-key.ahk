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
 * @var {string} keySC The scan code of the key that called the function. This
 *  is used to determine the key's physical state to initiate the tap or
 *  hold action.
 * @param {integer} stickyKeyTimeout Duration in milliseconds to sticky KeyName
 *  when KeySC was tapped.
 * @param {string} keyName The key to sticky with a timeout on tap, or to hold
 *  while KeySC is held.
 * @returns None.
 * @example Shift & sc020::StickyKey(350, "Ctrl")
 */
StickyKey(stickyKeyTimeout := 350, keyName := "") {
    keySC := A_ThisHotkey
    keySC := RegExMatch(keySC, "sc\d+", &OutputVar)
    keySC := OutputVar[]

    ;; On Tap
    Send "{Blind}{" keyName " Down}"
    Sleep stickyKeyTimeout

    ;; On Hold
    if !KeyWait(keySC) {
        Send "{Blind}{" keyName " Down}"
    }

    ;; On Release
    KeyWait keySC
    Send "{" keyName " Up}"
}
