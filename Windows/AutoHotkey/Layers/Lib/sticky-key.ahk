/*
 * File        : sticky-key.ahk
 * Description : Timed Sticky Key (one-shot modifier) for Keeb Utils
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function provides dual-role behavior for modifiers:
 *  1. Hold: Acts as a standard modifier.
 *  2. Tap: Keeps the modifier active for a defined timeout (Sticky).
 *
 * Documentation:
 *  AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 *  Scan Codes: https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 */

/**
 * @param {int} stickyTimeout    Sticky time after a tap-and-release.
 * @param {string} keyName    Name of the modifier key to sticky or hold (e.g., "Ctrl").
 * @var {string} triggerKey    Scan code of the key that called the function. Important: The key the functions is mapped to must be defined using its scan code.
 * @example    Shift & sc020::StickyKey(450, "LShift")
 */
StickyKey(stickyTimeout := 0, keyName := "") {
    ;; Extract the scan code from the key that called the function.
    RegExMatch(A_ThisHotkey, "i)sc\d+", &match)
    triggerKey := match[0]

    Send "{Blind}{" keyName " Down}"
    Sleep stickyTimeout

    if !KeyWait(triggerKey) {
        Send "{Blind}{" keyName " Down}"
    }

    KeyWait triggerKey
    Send "{" keyName " Up}"
}
