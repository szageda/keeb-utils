/*
 * File        : symbols.ahk
 * Description : AutoHotkey keyboard layer configuration file (Keeb Utils)
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * AutoHotkey adds a "Symbols" layer by defining new key shortcuts using the
 * F23 virtual key and physical key locations (scan codes), allowing functions
 * to be mapped to these new key combinations.
 *
 * The layer keymap stays persistent regardless of the active keyboard layout
 * of the operating system thanks to using scan codes instead of virtual keys:
 * ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 * |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 * |   |   |   |   |   |   |   |   |   |   |   |   |   |Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 * | Tab | ! | { | } | ` | ^ | @ | ' | [ | ] | ~ | “‘| ”’|  „‚ |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 * | Caps | $ | < | > | = | # | : | - | ( | ) | * | ; | Enter  |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 * |  Shift | \ | / | _ | " | –—| | | & | % | + | ? | Shift    |
 * |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 * | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 * `------'---'----'----------------------'----'---'----'------'
 *
 * Keyboard Scan Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; Map Left Alt to F23 virtual key.
;; Note: Alt+Tab's active window switching behavior is lost, but Alt's regular
;; functionality on key tap is preserved -- this does not impact the Right Alt
;; (or AltGr) key.
#InputLevel 1
LAlt::F23
#InputLevel 0

F23::
{
    ;; Implement Tap-Hold Behavior:
    ;; - On Tap: Normal Alt key behavior.
    ;; - On Hold: Hold the F23 virtual key to activate the layer.
    ;;
    ;; 'KeyWait()' monitors the physical state of Left Alt key using
    ;; its scan code (sc038).

    ;; On Tap
    Send "{LAlt Down}"

    ;; On Hold
    if !KeyWait("sc038") {
        Send "{F23}"
    }

    ;; On Release
    KeyWait "sc038"
    Send "{Alt Up}"
}

;; Function Row
F23 & sc001::Return                         ;; Esc
F23 & sc03B::Return                         ;; F1
F23 & sc03C::Return                         ;; F2
F23 & sc03D::Return                         ;; F3
F23 & sc03E::Return                         ;; F4
F23 & sc03F::Return                         ;; F5
F23 & sc040::Return                         ;; F6
F23 & sc041::Return                         ;; F7
F23 & sc042::Return                         ;; F8
F23 & sc043::Return                         ;; F9
F23 & sc044::Return                         ;; F10
F23 & sc057::Return                         ;; F11
F23 & sc058::Return                         ;; F12

;; Numeric Row
F23 & sc029::Return                         ;; QWERTY `~
F23 & sc002::Return                         ;; QWERTY 1!
F23 & sc003::Return                         ;; QWERTY 2@
F23 & sc004::Return                         ;; QWERTY 3#
F23 & sc005::Return                         ;; QWERTY 4$
F23 & sc006::Return                         ;; QWERTY 5%
F23 & sc007::Return                         ;; QWERTY 6^
F23 & sc008::Return                         ;; QWERTY 7&
F23 & sc009::Return                         ;; QWERTY 8*
F23 & sc00A::Return                         ;; QWERTY 9(
F23 & sc00B::Return                         ;; QWERTY 0)
F23 & sc00C::Return                         ;; QWERTY -_
F23 & sc00D::Return                         ;; QWERTY =+

;; Top Row
F23 & sc010::Send "{Raw}!"                  ;; QWERTY qQ
F23 & sc011::Send "{Raw}{"                  ;; QWERTY wW
F23 & sc012::Send "{Raw}}"                  ;; QWERTY eE
F23 & sc013::Send "{Raw}``"                 ;; QWERTY rR
F23 & sc014::Send "{Raw}^"                  ;; QWERTY tT
F23 & sc015::send "{Raw}@"                  ;; QWERTY yY
F23 & sc016::Send "{Raw}'"                  ;; QWERTY uU
F23 & sc017::Send "{Raw}["                  ;; QWERTY iI
F23 & sc018::Send "{Raw}]"                  ;; QWERTY oO
F23 & sc019::Send "{Raw}~"                  ;; QWERTY pP
F23 & sc01A::                               ;; QWERTY [{
{
    if GetKeyState("Shift") {
        Send "{Raw}‘"
    } else {
        Send "{Raw}“"
    }
}
F23 & sc01B::                               ;; QWERTY ]}
{
    if GetKeyState("Shift") {
        Send "{Raw}’"
    } else {
        Send "{Raw}”"
    }
}
F23 & sc02B::                               ;; QWERTY \|
{
    if GetKeyState("Shift") {
        Send "{Raw}‚"
    } else {
        Send "{Raw}„"
    }
}

;; Home Row
F23 & sc01E::Send "{Raw}$"                  ;; QWERTY aA
F23 & sc01F::Send "{Raw}<"                  ;; QWERTY sS
F23 & sc020::Send "{Raw}>"                  ;; QWERTY dD
F23 & sc021::Send "{Raw}="                  ;; QWERTY fF
F23 & sc022::Send "{Raw}#"                  ;; QWERTY gG
F23 & sc023::Send "{Raw}:"                  ;; QWERTY hH
F23 & sc024::Send "{Raw}-"                  ;; QWERTY jJ
F23 & sc025::Send "{Raw}("                  ;; QWERTY kK
F23 & sc026::Send "{Raw})"                  ;; QWERTY lL
F23 & sc027::Send "{Raw}*"                  ;; QWERTY ;:
F23 & sc028::Send "{Raw};"                  ;; QWERTY '"

;; Bottom Row
F23 & sc02C::Send "{Raw}\"                  ;; QWERTY zZ
F23 & sc02D::Send "{Raw}/"                  ;; QWERTY xX
F23 & sc02E::Send "{Raw}_"                  ;; QWERTY cC
F23 & sc02F::Send "{Raw}`""                 ;; QWERTY vV
F23 & sc030::                               ;; QWERTY bB
{
    if GetKeyState("Shift") {
        Send "{Raw}—"
    } else {
        Send "{Raw}–"
    }
}
F23 & sc031::Send "{Raw}|"                  ;; QWERTY nN
F23 & sc032::Send "{Raw}&"                  ;; QWERTY mM
F23 & sc033::Send "{Raw}%"                  ;; QWERTY ,<
F23 & sc034::Send "{Raw}+"                  ;; QWERTY .>
F23 & sc035::Send "{Raw}?"                  ;; QWERTY /?
