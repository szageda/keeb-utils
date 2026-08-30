/*
 * File        : one-shot-timed-mod.ahk
 * Description : One-Shot Modifier with a Timeout for Keeb Utils
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * Documentation:
 * - AutoHotkey v2 KeyWait:
 *      https://www.autohotkey.com/docs/v2/lib/KeyWait.htm
 * - AutoHotkey v2 Send:
 *      https://www.autohotkey.com/docs/v2/lib/Send.htm
 * - Scan Codes:
 *      https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

/**
 * Holds a modifier for a short time after the hotkey is tapped.
 * This keeps the action feeling like a one-shot modifier without leaving the
 * key stuck until the user physically releases it.
 *
 * @param {int} modTimeout    Duration (ms) the modifier remains active after a tap.
 * @param {string} modifierKey    Name of the modifier key to sticky or hold (e.g., "Ctrl").
 * @var {string} triggerKey    Scan code of the key that called the function.
 * @example    Shift & sc020::OneShotTimedMod(450, "LShift")
 */
OneShotTimedMod(modTimeout := 0, modifierKey := "")
{
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-Fa-f]+", &match)
    triggerKey := match[0]

    Send "{Blind}{" modifierKey " Down}"
    Sleep modTimeout

    if !KeyWait(triggerKey) {
        Send "{Blind}{" modifierKey " Down}"
    }

    KeyWait triggerKey
    Send "{" modifierKey " Up}"
}
