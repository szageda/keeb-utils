/*
 * File        : multi-sticky.ahk
 * Description : AutoHotkey Multi-Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * Implement a multi-tap sticky key function to combine two modifiers
 * into a single key:
 *  - Single Tap & Release: Sticky the primary modifier
 *                          for the next key press.
 *    - Single Tap & Hold: Hold the primary modifier.
 *  - Double Tap & Release: Sticky the primary and secondary modifiers
 *                          for the next key press. 
 *    - Double Tap & Hold: Hold both modifiers.
 *
 * Notes:
 *  - The tap counter resets after its defined timeout period.
 *  - The sticky keys expire after their defined timeout period.
 *
 * Example Usage:
 *  Shift & sc020::MultiSticky(175, "Ctrl", 450, "Shift")
 */

MultiSticky(tapTimeout := 175,
            primaryKey := "",
            stickyTimeout := 450,
            secondaryKey := "") {

    ;; Extract the scan code from the key that called the function.
    ;; Important: The function must be mapped to a key defined using
    ;; its scan code (e.g., "sc020").
    triggerKey := A_ThisHotkey
    triggerKey := RegExMatch(triggerKey, "sc\d+", &OutputVar)
    triggerKey := OutputVar[]

    ;; Create the tap counter.
    static keyPresses := 0
    if (keyPresses > 0) {
        keyPresses += 1
        Return
    }

    ;; Start the tap counter on the first key press; the counter resets
    ;; after the timeout defined by 'tapTimeout' in milliseconds.
    keyPresses := 1
    SetTimer Taps, -tapTimeout

    Taps() {
        ;; Single Tap
        if (keyPresses = 1) {
            Send "{Blind}{" primaryKey " Down}"
            Sleep stickyTimeout

            ;; Single Tap & Hold
            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryKey " Down}"
            }

            ;; Release
            KeyWait triggerKey
            Send "{" primaryKey " Up}"
        }

        ;; Double Tap
        if (keyPresses = 2) {
            Send "{Blind}{" primaryKey " Down}"
            Send "{Blind}{" secondaryKey " Down}"
            Sleep stickyTimeout

            ;; Double Tap & Hold
            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryKey " Down}"
                Send "{Blind}{" secondaryKey " Down}"
            }

            ;; Release
            KeyWait triggerKey
            Send "{" primaryKey " Up}"
            Send "{" secondaryKey " Up}"
        }
        keyPresses := 0
    }
}
