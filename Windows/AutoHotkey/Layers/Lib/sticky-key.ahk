/*
 * File        : sticky-key.ahk
 * Description : AutoHotkey Sticky Key function (Keeb Utils)
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function implements sticky and hold behaviors for modifier keys.
 *
 * Example Usage:
 *  Shift & sc020::StickyKey(450, "Ctrl")
 */

/**
 * @param {int} stickyTimeout    Sticky-time after a tap-and-release.
 * @param {string} keyName    Name of the modifier key to sticky or hold (e.g., "Ctrl").
 * @var {string} triggerKey    Scan code of the key that called the function. Important: The key the functions is mapped to must be defined using its scan code (e.g., "sc020").
 */
StickyKey(stickyTimeout := 0, keyName := "") {

    ;; Extract the scan code from the key that called the function.
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-F]+|.", &match)
    triggerKey := match[0]

    Send "{Blind}{" keyName " Down}"
    Sleep stickyTimeout

    if !KeyWait(triggerKey) {
        Send "{Blind}{" keyName " Down}"
    }

    KeyWait triggerKey
    Send "{" keyName " Up}"
}
