/*
 * File        : multi-sticky.ahk
 * Description : AutoHotkey Multi-Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025, Gergely Szabo
 * License     : MIT
 */

/**
 * @description Implements a multi-tap sticky key behavior emulating KMonad's
 *  combination of 'multi-tap' and 'sticky-key' functions.
 * @caution The function must be mapped to a key defined with its scan code.
 * @var {string} keySC The scan code of the key that called the function. This
 *  is used to determine the key's physical state to initiate a tap or hold
 *  action.
 * @var {integer} keyPresses Static variable to count the number of taps. It is
 *  reset when multiTapTimeout expires or the function completes.
 * @param {integer} multiTapTimeout Duration in milliseconds to wait for the
 * second tap.
 * @param {string} primaryKey The primary key to sticky with a timeout on tap,
 *  or to hold while KeySC is held.
 * @param {integer} stickyKeyTimeout Duration in milliseconds to sticky the
 *  primaryKey when KeySC is tapped, or sticky the primaryKey and secondaryKey
 *  on a double tap.
 * @param {string} secondaryKey The secondary key to sticky with the primaryKey
 *  on a double tap, or to hold with the primaryKey on a double tap and hold
 *  while KeySC is held.
 * @returns None.
 * @example Shift & sc020::MultiSticky(175, "Ctrl", 450, "Shift")
 */
MultiSticky(multiTapTimeout := 175,
            primaryKey := "",
            stickyKeyTimeout := 450,
            secondaryKey := "") {
    keySC := A_ThisHotkey
    keySC := RegExMatch(keySC, "sc\d+", &OutputVar)
    keySC := OutputVar[]

    static keyPresses := 0
    if (keyPresses > 0) {
        keyPresses += 1
        Return
    }

    keyPresses := 1
    SetTimer Taps, -multiTapTimeout

    Taps() {
        ;; Single Tap
        if (keyPresses = 1) {
            Send "{Blind}{" primaryKey " Down}"
            Sleep stickyKeyTimeout

            ;; Single Tap & Hold
            if !KeyWait(keySC) {
                Send "{Blind}{" primaryKey " Down}"
            }

            ;; Release
            KeyWait keySC
            Send "{" primaryKey " Up}"
        }

        ;; Double Tap
        if (keyPresses = 2) {
            Send "{Blind}{" primaryKey " Down}"
            Send "{Blind}{" secondaryKey " Down}"
            Sleep stickyKeyTimeout

            ;; Double Tap & Hold
            if !KeyWait(keySC) {
                Send "{Blind}{" primaryKey " Down}"
                Send "{Blind}{" secondaryKey " Down}"
            }

            ;; Release
            KeyWait keySC
            Send "{" primaryKey " Up}"
            Send "{" secondaryKey " Up}"
        }
        keyPresses := 0
    }
}
