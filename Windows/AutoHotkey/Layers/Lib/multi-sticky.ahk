/*
 * File        : multi-sticky.ahk
 * Description : AutoHotkey Multi-Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function implements sticky and held behaviors for modifier keys, it
 * also combines two modifiers into one physical key for the same behaviors.
 * The function uses a timer to count the number of taps to determine if one
 * modifier or two modifiers should be activated.
 *
 * Example Usage:
 *  Shift & sc020::MultiSticky(175, "Ctrl", 450, "Shift")
 */

/**
 * @param {int} tapTimeout    Max ms between taps to increment count.
 * @param {string} primaryKey    Primary modifier (e.g., "Ctrl").
 * @param {int} stickyTimeout    Sticky-time after a tap-and-release.
 * @param {string} secondaryKey    Modifier added on double-tap (e.g., "Shift").
 * @var {string} triggerKey    Scan code of the key that called the function. Important: The key the functions is mapped to must be defined using its scan code (e.g., "sc020").
 * @var {int} keyPresses    Stores the number of taps detected within 'tapTimeout'.
 */
MultiSticky(tapTimeout := 0,
            primaryKey := "",
            stickyTimeout := 0,
            secondaryKey := "") {

    ;; Extract the scan code from the key that called the function.
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-F]+|.", &match)
    triggerKey := match[0]

    ;; Implement the tap counting logic.
    static keyPresses := 0
    if (keyPresses > 0) {
        keyPresses += 1
        Return
    }
    keyPresses := 1
    SetTimer Taps, -tapTimeout

    ;; Key state handling.
    Taps() {
        if (keyPresses = 1) {
            Send "{Blind}{" primaryKey " Down}"
            Sleep stickyTimeout

            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryKey " Down}"
            }

            KeyWait triggerKey
            Send "{" primaryKey " Up}"
        }

        if (keyPresses = 2) {
            Send "{Blind}{" primaryKey " Down}"
            Send "{Blind}{" secondaryKey " Down}"
            Sleep stickyTimeout

            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryKey " Down}"
                Send "{Blind}{" secondaryKey " Down}"
            }

            KeyWait triggerKey
            Send "{" primaryKey " Up}"
            Send "{" secondaryKey " Up}"
        }
        keyPresses := 0
    }
}
