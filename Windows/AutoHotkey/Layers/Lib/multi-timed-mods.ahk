/*
 * File        : multi-timed-mods.ahk
 * Description : Multi-Tap Modifiers with a Timeout for Keeb Utils
 * Copyright   : (c) 2025-2026, Gergely Szabo
 * License     : MIT
 *
 * This function provides dual-role behavior for modifier keys on single and double taps:
 *  1. Single Tap: Activate the primary modifier (e.g., Ctrl).
 *  2. Double Tap: Activate the primary and secondary modifiers (e.g., Ctrl+Shift).
 *  3. Hold: Function as a standard modifier or modifier pair.
 *
 * Documentation:
 * - AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 * - Scan Codes: https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

/**
 * @param {int} tapTimeout    Max ms between taps to increment count.
 * @param {string} primaryModifier    Primary modifier key to sticky or hold (e.g., "Ctrl").
 * @param {int} modTimeout    Duration (ms) the modifier(s) remain(s) active after a tap.
 * @param {string} secondaryModifier    Modifier added on double tap (e.g., "Shift").
 * @var {string} triggerKey    Scan code of the key that called the function.
 * @var {int} tapCount    Stores the number of taps detected within `tapTimeout`.
 * @example    Shift & sc020::MultiTimedMods(175, 450, "Ctrl", "Shift")
 */
MultiTimedMods(tapTimeout := 0, modTimeout := 0,
               primaryModifier := "", secondaryModifier := "")
{
    ;; Function Caller Scan Code Extraction
    RegExMatch(A_ThisHotkey, "i)sc[0-9A-Fa-f]+", &match)
    triggerKey := match[0]

    ;; Tapping Logic Implementation
    static tapCount := 0
    if (tapCount > 0) {
        tapCount += 1
        return
    }
    tapCount := 1
    SetTimer ProcessTaps, -tapTimeout

    ;; Key State Handling
    ProcessTaps() {
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
