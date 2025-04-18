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
 * (or AltGr) key.
 *
 * The layer keymap stays persistent regardless of the active keyboard layout
 * of the operating system thanks to using scan codes instead of virtual keys:
 * ,---,  ,---,---,---,---,  ,---,---,---,---,  ,---,---,---,---,
 * |   |  |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * '---'  '---'---'---'---'  '---'---'---'---'  '---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,--------,
 * |§¶ |¡• |¿≡ |—– |€¢ |¥… |«‹ |»› |„‚ |“‘ |”’ |   |   | Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,------|
 * | Tab | ! | { | } | " | ? | @ | ' | [ | ] | ~ |   |   |      |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'------|
 * | Caps | $ | < | > | = | # | : | - | ( | ) | * |   | Enter   |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---------|
 * |  Shift | \ | / | _ | ` |   | | | & | % | + | ^ | Shift     |
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

;; Map Left Alt to F23 virtual key.
#InputLevel 1
LAlt::F23
#InputLevel 0

;; Configure the F23 virtual key.
F23::
{
    ;; Implement Tap-Hold Behavior:
    ;; - On Tap: Normal Alt key behavior.
    ;; - On Hold: Hold the F23 virtual key to activate the layer.
    ;;
    ;; The 'KeyWait' function monitors the physical Left Alt key state
    ;; using its scan code (sc038).

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

;; -- KEYMAP ------------------------------------------------------------------
;;
;; The keymap definitions map 'Send' function to Alt+Some Key combinations.
;; Lines where the mapped function is 'Return' means those key combinations
;; won't emit anything.
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
    if GetKeyState("Shift") {
        Send "{Raw}¶"
    } else {
        Send "{Raw}§"
    }
}
F23 & sc002::                               ;; QWERTY 1!
{
    if GetKeyState("Shift") {
        Send "{Raw}•"
    } else {
        Send "{Raw}¡"
    }
}
F23 & sc003::                               ;; QWERTY 2@
{
    if GetKeyState("Shift") {
        Send "{Raw}≡"
    } else {
        Send "{Raw}¿"
    }
}
F23 & sc004::                               ;; QWERTY 3#
{
    if GetKeyState("Shift") {
        Send "{Raw}–"
    } else {
        Send "{Raw}—"
    }
}
F23 & sc005::                               ;; QWERTY 4$
{
    if GetKeyState("Shift") {
        Send "{Raw}¢"
    } else {
        Send "{Raw}€"
    }
}
F23 & sc006::                               ;; QWERTY 5%
{
    if GetKeyState("Shift") {
        Send "{Raw}…"
    } else {
        Send "{Raw}¥"
    }
}
F23 & sc007::                               ;; QWERTY 6^
{
    if GetKeyState("Shift") {
        Send "{Raw}‹"
    } else {
        Send "{Raw}«"
    }
}
F23 & sc008::                               ;; QWERTY 7&
{
    if GetKeyState("Shift") {
        Send "{Raw}›"
    } else {
        Send "{Raw}»"
    }
}
F23 & sc009::                               ;; QWERTY 8*
{
    if GetKeyState("Shift") {
        Send "{Raw}‚"
    } else {
        Send "{Raw}„"
    }
}
F23 & sc00A::                               ;; QWERTY 9(
{
    if GetKeyState("Shift") {
        Send "{Raw}‘"
    } else {
        Send "{Raw}“"
    }
}
F23 & sc00B::                               ;; QWERTY 0)
{
    if GetKeyState("Shift") {
        Send "{Raw}’"
    } else {
        Send "{Raw}”"
    }
}
F23 & sc00C::Return                         ;; QWERTY -_
F23 & sc00D::Return                         ;; QWERTY =+

;; Top Row
F23 & sc010::Send "{Raw}!"                  ;; QWERTY qQ
F23 & sc011::Send "{Raw}{"                  ;; QWERTY wW
F23 & sc012::Send "{Raw}}"                  ;; QWERTY eE
F23 & sc013::Send "{Raw}`""                 ;; QWERTY rR
F23 & sc014::Send "{Raw}?"                  ;; QWERTY tT
F23 & sc015::send "{Raw}@"                  ;; QWERTY yY
F23 & sc016::Send "{Raw}'"                  ;; QWERTY uU
F23 & sc017::Send "{Raw}["                  ;; QWERTY iI
F23 & sc018::Send "{Raw}]"                  ;; QWERTY oO
F23 & sc019::Send "{Raw}~"                  ;; QWERTY pP
F23 & sc01A::Return                         ;; QWERTY [{
F23 & sc01B::Return                         ;; QWERTY ]}
F23 & sc02B::Return                         ;; QWERTY \|

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
F23 & sc028::Return                         ;; QWERTY '"

;; Bottom Row
F23 & sc02C::Send "{Raw}\"                  ;; QWERTY zZ
F23 & sc02D::Send "{Raw}/"                  ;; QWERTY xX
F23 & sc02E::Send "{Raw}_"                  ;; QWERTY cC
F23 & sc02F::Send "{Raw}``"                 ;; QWERTY vV
F23 & sc030::Return                         ;; QWERTY bB
F23 & sc031::Send "{Raw}|"                  ;; QWERTY nN
F23 & sc032::Send "{Raw}&"                  ;; QWERTY mM
F23 & sc033::Send "{Raw}%"                  ;; QWERTY ,<
F23 & sc034::Send "{Raw}+"                  ;; QWERTY .>
F23 & sc035::Send "{Raw}^"                  ;; QWERTY /?
