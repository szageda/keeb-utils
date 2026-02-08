/*
 * File        : multi-sticky.ahk
 * Description : Multi-Tap Sticky Key (one-shot modifier) logic for Keeb Utils
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function provides dual-role behavior for single and double taps:
 *  1. Single Tap: Activates a primary modifier (e.g., Ctrl).
 *  2. Double Tap: Activates primary and secondary modifiers (e.g., Ctrl+Shift).
 *  3. Hold: Functions as a standard modifier or modifier pair.
 *
 * Documentation:
 *  AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 *  Scan Codes: https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 */

/**
 * @param {int} tapTimeout    Max ms between taps to increment count.
 * @param {string} primaryKey    Primary modifier (e.g., "Ctrl").
 * @param {int} stickyTimeout    Sticky time after a tap-and-release.
 * @param {string} secondaryKey    Modifier added on double tap (e.g., "Shift").
 * @var {string} triggerKey    Scan code of the key that called the function. Important: The key the functions is mapped to must be defined using its scan code (e.g., "sc020").
 * @var {int} keyPresses    Stores the number of taps detected within 'tapTimeout'.
 * @example    Shift & sc020::MultiSticky(175, "Ctrl", 450, "Shift")
 */
MultiSticky(tapTimeout := 0,
            primaryKey := "",
            stickyTimeout := 0,
            secondaryKey := "") {
    ;; Extract the scan code from the key that called the function.
    RegExMatch(A_ThisHotkey, "i)sc\d+", &match)
    triggerKey := match[0]

    ;; Implement the tap counting logic.
    static keyPresses := 0
    if (keyPresses > 0) {
        keyPresses += 1
        return
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
