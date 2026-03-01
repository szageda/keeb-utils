/*
 * File        : one-shot-timed-mod.ahk
 * Description : One-Shot Modifier with a Timeout for Keeb Utils
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function provides dual-role behavior for modifier keys:
 * 1. Hold: Acts as a standard modifier.
 * 2. Tap: Keeps the modifier active for a defined timeout (also called a "sticky key").
 *
 * Documentation:
 * - AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 * - Scan Codes: https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

/**
 * @param {int} modTimeout    Duration (ms) the modifier remains active after a tap.
 * @param {string} modifierKey    Name of the modifier key to sticky or hold (e.g., "Ctrl").
 * @var {string} triggerKey    Scan code of the key that called the function.
 * @example    Shift & sc020::OneShotTimedMod(450, "LShift")
 */
OneShotTimedMod(modTimeout := 0, modifierKey := "")
{
    ;; Function Caller Scan Code Extraction
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-Fa-f]+", &match)
    triggerKey := match[0]

    ;; One-Shot Modifier Logic
    Send "{Blind}{" modifierKey " Down}"
    Sleep modTimeout

    if !KeyWait(triggerKey) {
        Send "{Blind}{" modifierKey " Down}"
    }

    KeyWait triggerKey
    Send "{" modifierKey " Up}"
}
