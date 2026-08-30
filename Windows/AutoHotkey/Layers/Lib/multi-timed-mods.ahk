/*
 * File        : multi-timed-mods.ahk
 * Description : Multi-Tap Modifiers with a Timeout for Keeb Utils
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
 * Treats a single key as a tap-timeout modifier: one tap holds the primary
 * modifier, while a second tap adds the secondary modifier.
 * The short timeout lets the user decide between a single tap and a double tap
 * without the key feeling sticky or delayed.
 *
 * @param {int} tapTimeout    Max ms between taps to increment count.
 * @param {string} primaryModifier    Primary modifier key to sticky or hold (e.g., "Ctrl").
 * @param {int} modTimeout    Duration (ms) the modifier(s) remain(s) active after a tap.
 * @param {string} secondaryModifier    Modifier added on double tap (e.g., "Shift").
 * @var {string} triggerKey    Scan code of the key that called the function.
 * @var {int} tapCount    Number of taps seen within the timeout window.
 * @example    Shift & sc020::MultiTimedMods(175, 450, "Ctrl", "Shift")
 */
MultiTimedMods(tapTimeout := 0, modTimeout := 0,
               primaryModifier := "", secondaryModifier := "")
{
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-Fa-f]+", &match)
    triggerKey := match[0]

    static tapCount := 0
    if (tapCount > 0) {
        tapCount += 1
        return
    }
    tapCount := 1
    SetTimer ProcessTaps, -tapTimeout

    ProcessTaps()
    {
        if (tapCount = 1) {
            Send "{Blind}{" primaryModifier " Down}"
            Sleep modTimeout

            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryModifier " Down}"
            }

            KeyWait triggerKey
            Send "{" primaryModifier " Up}"
        }

        if (tapCount = 2) {
            Send "{Blind}{" primaryModifier " Down}"
            Send "{Blind}{" secondaryModifier " Down}"
            Sleep modTimeout

            if !KeyWait(triggerKey) {
                Send "{Blind}{" primaryModifier " Down}"
                Send "{Blind}{" secondaryModifier " Down}"
            }

            KeyWait triggerKey
            Send "{" primaryModifier " Up}"
            Send "{" secondaryModifier " Up}"
        }
        tapCount := 0
    }
}
