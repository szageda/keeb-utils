/*
 * File        : symbols.ahk
 * Description : Keeb Utils Symbols keyboard layer
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * AutoHotkey adds a "Symbols" layer by defining new key combinations using the
 * F23 virtual key and physical key locations (scan codes), allowing functions
 * to be mapped to these new key combinations.
 * 
 * Note: Alt+Tab's active window switching behavior is lost, but Alt's regular
 * functionality on key tap is preserved. This does not impact the Right Alt
 * (AltGr) key.
 *
 * The layer keymap stays persistent regardless of the active keyboard layout
 * of the operating system thanks to using scan codes instead of virtual keys:
 * ,---,  ,---,---,---,---,  ,---,---,---,---,  ,---,---,---,---,
 * |   |  |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * '---'  '---'---'---'---'  '---'---'---'---'  '---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,--------,
 * |§¶ |¡• |¿≡ |—– |€¢ |¥… |«‹ |»› |„‚ |“‘ |”’ |   |   | Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,------|
 * | Tab |   | _ | { | } |   |   | [ | ] | * |   |   |   |      |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'------|
 * | Caps | ~ | # | < | > | % | / | ( | ) | - | = | \ | Enter   |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---------|
 * |  Shift |   | @ | $ | ^ |   |   | & | | | + |   | Shift     |
 * |----,---'-,-'--,'---'---'---'---'---'--,'---',--'-,----,----|
 * |Ctrl| Win |Alt | Enter                 | RAlt| Win|Menu|Ctrl|
 * '----'-----'----'-----------------------'-----'----'----'----'
 *
 * Keyboard Scan Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; -- CONFIGURATION -----------------------------------------------------------

;; Map Left Alt to F23 virtual key
#InputLevel 1
LAlt::F23
#InputLevel 0

;; Implement tap-hold behavior:
;; On tap: Normal Alt key behavior
;; On hold: Hold the F23 virtual key which activates the layer
F23::
{
    ;; The KeyWait functions use the scan code of the Alt key (sc038)
    ;; to monitor the state of the physical Left Alt key.

    ;; On tap
    Send "{LAlt Down}"

    ;; On hold
    If (!KeyWait("sc038")) {
        Send "{F23}"
    }

    ;; On release
    KeyWait "sc038"
    Send "{Alt Up}"
}

;; -- KEYMAP ------------------------------------------------------------------
;;
;; Formatting:
;;      F23 & scancode::function  ;; comments

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
F23 & sc029::                               ;; QWERTY `~
{
    if (GetKeyState("Shift")) {
        Send "{Raw}¶"
    } else {
        Send "{Raw}§"
    }
}
F23 & sc002::                               ;; QWERTY 1!
{
    if (GetKeyState("Shift")) {
        Send "{Raw}•"
    } else {
        Send "{Raw}¡"
    }
}
F23 & sc003::                               ;; QWERTY 2@
{
    if (GetKeyState("Shift")) {
        Send "{Raw}≡"
    } else {
        Send "{Raw}¿"
    }
}
F23 & sc004::                               ;; QWERTY 3#
{
    if (GetKeyState("Shift")) {
        Send "{Raw}–"
    } else {
        Send "{Raw}—"
    }
}
F23 & sc005::                               ;; QWERTY 4$
{
    if (GetKeyState("Shift")) {
        Send "{Raw}¢"
    } else {
        Send "{Raw}€"
    }
}
F23 & sc006::                               ;; QWERTY 5%
{
    if (GetKeyState("Shift")) {
        Send "{Raw}…"
    } else {
        Send "{Raw}¥"
    }
}
F23 & sc007::                               ;; QWERTY 6^
{
    if (GetKeyState("Shift")) {
        Send "{Raw}‹"
    } else {
        Send "{Raw}«"
    }
}
F23 & sc008::                               ;; QWERTY 7&
{
    if (GetKeyState("Shift")) {
        Send "{Raw}›"
    } else {
        Send "{Raw}»"
    }
}
F23 & sc009::                               ;; QWERTY 8*
{
    if (GetKeyState("Shift")) {
        Send "{Raw}‚"
    } else {
        Send "{Raw}„"
    }
}
F23 & sc00A::                               ;; QWERTY 9(
{
    if (GetKeyState("Shift")) {
        Send "{Raw}‘"
    } else {
        Send "{Raw}“"
    }
}
F23 & sc00B::                               ;; QWERTY 0)
{
    if (GetKeyState("Shift")) {
        Send "{Raw}’"
    } else {
        Send "{Raw}”"
    }
}
F23 & sc00C::Return                         ;; QWERTY -_
F23 & sc00D::Return                         ;; QWERTY =+

;; Top Row
F23 & sc010::Return                         ;; QWERTY qQ
F23 & sc011::Send "{Raw}_"                  ;; QWERTY wW
F23 & sc012::Send "{Raw}{"                  ;; QWERTY eE
F23 & sc013::Send "{Raw}}"                  ;; QWERTY rR
F23 & sc014::Return                         ;; QWERTY tT
F23 & sc015::Return                         ;; QWERTY yY
F23 & sc016::Send "{Raw}["                  ;; QWERTY uU
F23 & sc017::Send "{Raw}]"                  ;; QWERTY iI
F23 & sc018::Send "{Raw}*"                  ;; QWERTY oO
F23 & sc019::Return                         ;; QWERTY pP
F23 & sc01A::Return                         ;; QWERTY [{
F23 & sc01B::Return                         ;; QWERTY ]}
F23 & sc02B::Return                         ;; QWERTY \|

;; Home Row
F23 & sc01E::Send "{Raw}~"                  ;; QWERTY aA
F23 & sc01F::Send "{Raw}#"                  ;; QWERTY sS
F23 & sc020::Send "{Raw}<"                  ;; QWERTY dD
F23 & sc021::Send "{Raw}>"                  ;; QWERTY fF
F23 & sc022::Send "{Raw}%"                  ;; QWERTY gG
F23 & sc023::Send "{Raw}/"                  ;; QWERTY hH
F23 & sc024::Send "{Raw}("                  ;; QWERTY jJ
F23 & sc025::Send "{Raw})"                  ;; QWERTY kK
F23 & sc026::Send "{Raw}-"                  ;; QWERTY lL
F23 & sc027::Send "{Raw}="                  ;; QWERTY ;:
F23 & sc028::Send "{Raw}\"                  ;; QWERTY '"

;; Bottom Row
F23 & sc02C::Return                         ;; QWERTY zZ
F23 & sc02D::Send "{Raw}@"                  ;; QWERTY xX
F23 & sc02E::Send "{Raw}$"                  ;; QWERTY cC
F23 & sc02F::Send "{Raw}^"                  ;; QWERTY vV
F23 & sc030::Return                         ;; QWERTY bB
F23 & sc031::Return                         ;; QWERTY nN
F23 & sc032::Send "{Raw}&"                  ;; QWERTY mM
F23 & sc033::Send "{Raw}|"                  ;; QWERTY ,<
F23 & sc034::Send "{Raw}+"                  ;; QWERTY .>
F23 & sc035::Return                         ;; QWERTY /?
