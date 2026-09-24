/*
 * File        : caps-lock-toggle.ahk
 * Description : Caps Lock Toggle function for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * Documentation:
 * - AutoHotkey v2 SetCapsLockState / SetNumLockState / SetScrollLockState:
 *      https://www.autohotkey.com/docs/v2/lib/SetNumScrollCapsLockState.htm
 * - AutoHotkey v2 GetKeyState:
 *      https://www.autohotkey.com/docs/v2/lib/GetKeyState.htm
 */

CapsLockToggle()
{
    SetCapsLockState GetKeyState("CapsLock", "T")
    ? "AlwaysOff"
    : "AlwaysOn"
}
