/*
 * File        : numpad.ahk
 * Description : Numpad layer keymap for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * This script creates a dedicated Numpad layer as a "stepped layer": It is
 * accessed from the Symbols layer (defined in symbols.ahk) by holding the
 * <Caps Lock> key. The Numpad layer provides a 3x3 numeric grid, hexadecimal
 * characters, and basic mathematical operators for technical data entry.
 *
 * The Numpad layer maps the functions to keys using scan codes to ensure
 * the keymap remains consistent across different system keyboard layouts.
 *
 * Layer Diagram:
 *      ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 *      |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 *      `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 *      ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 *      |   |   |   |   |   |   |   |   |   |   |   |   |   |Backspc|
 *      |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 *      | Tab | x | a | b | c | ^ | * | 7 | 8 | 9 | 00|   |   |     |
 *      |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 *      | $Num | ~ | , | . | = | # | + | 4 | 5 | 6 | - |   | Enter  |
 *      |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 *      |  Shift | d | e | f | : |   | 0 | 1 | 2 | 3 | / | Shift    |
 *      |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 *      | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 *      `------'---'----'----------------------'----'---'----'------'
 *
 * Documentation:
 * - AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 * - Scan Codes: https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

IsNumpadActive := false

;; Activate the Numpad layer when holding <Left Alt>+<Caps Lock>.
#HotIf GetKeyState("sc038","P")
sc03A::
{
    global IsNumpadActive
    IsNumpadActive := true
}
sc03A Up::
{
    global IsNumpadActive
    IsNumpadActive := false
}
#HotIf

;; We also watch for <Left Alt> being released independently, so the
;; layer never gets stuck if <Left Alt> is released before <Caps Lock>.
;;
;; If <Left Alt> is released while <Caps Lock> is still down, make sure
;; the layer state is cleared. This runs unconditionally (no #HotIf),
;; so it catches the release event even when <Caps Lock> isn't held.
;;
;; The handler is run at 'InputLevel 1' and it's the only 'sc038 Up'
;; hotkey in the entire script; symbols.ahk relies on it to release
;; the F23 virtual key to ensure the Symbols layer never gets stuck.
#InputLevel 1
~sc038 Up::
{
    global IsNumpadActive
    IsNumpadActive := false
    Send "{F23 Up}"
}
#InputLevel 0

#HotIf (IsNumpadActive = true)
;; Function Row
sc001::return   ;; Esc
sc03B::return   ;; F1
sc03C::return   ;; F2
sc03D::return   ;; F3
sc03E::return   ;; F4
sc03F::return   ;; F5
sc040::return   ;; F6
sc041::return   ;; F7
sc042::return   ;; F8
sc043::return   ;; F9
sc044::return   ;; F10
sc057::return   ;; F11
sc058::return   ;; F12

;; Numeric Row
sc029::return   ;; QWERTY `~
sc002::return   ;; QWERTY 1!
sc003::return   ;; QWERTY 2@
sc004::return   ;; QWERTY 3#
sc005::return   ;; QWERTY 4$
sc006::return   ;; QWERTY 5%
sc007::return   ;; QWERTY 6^
sc008::return   ;; QWERTY 7&
sc009::return   ;; QWERTY 8*
sc00A::return   ;; QWERTY 9(
sc00B::return   ;; QWERTY 0)
sc00C::return   ;; QWERTY -_
sc00D::return   ;; QWERTY =+

;; Top Row
sc010::Send "{Raw}x"    ;; QWERTY qQ
sc011::Send "{Raw}a"    ;; QWERTY wW
sc012::Send "{Raw}b"    ;; QWERTY eE
sc013::Send "{Raw}c"    ;; QWERTY rR
sc014::Send "{Raw}^"    ;; QWERTY tT
sc015::send "{Raw}*"    ;; QWERTY yY
sc016::Send "{Raw}7"    ;; QWERTY uU
sc017::Send "{Raw}8"    ;; QWERTY iI
sc018::Send "{Raw}9"    ;; QWERTY oO
sc019::Send "{Raw}00"   ;; QWERTY pP
sc01A::return           ;; QWERTY [{
sc01B::return           ;; QWERTY ]}
sc02B::return           ;; QWERTY \|

;; Home Row
sc01E::Send "{Raw}~"    ;; QWERTY aA
sc01F::Send "{Raw},"    ;; QWERTY sS
sc020::Send "{Raw}."    ;; QWERTY dD
sc021::Send "{Raw}="    ;; QWERTY fF
sc022::Send "{Raw}#"    ;; QWERTY gG
sc023::Send "{Raw}+"    ;; QWERTY hH
sc024::Send "{Raw}4"    ;; QWERTY jJ
sc025::Send "{Raw}5"    ;; QWERTY kK
sc026::Send "{Raw}6"    ;; QWERTY lL
sc027::Send "{Raw}."    ;; QWERTY ;:
sc028::return           ;; QWERTY '"

;; Bottom Row
sc02C::Send "{Raw}d"    ;; QWERTY zZ
sc02D::Send "{Raw}e"    ;; QWERTY xX
sc02E::Send "{Raw}f"    ;; QWERTY cC
sc02F::Send "{Raw}:"    ;; QWERTY vV
sc030::return           ;; QWERTY bB
sc031::Send "{Raw}0"    ;; QWERTY nN
sc032::Send "{Raw}1"    ;; QWERTY mM
sc033::Send "{Raw}2"    ;; QWERTY ,<
sc034::Send "{Raw}3"    ;; QWERTY .>
sc035::Send "{Raw}/"    ;; QWERTY /?
#HotIf
