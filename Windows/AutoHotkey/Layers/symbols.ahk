/*
 * File        : symbols.ahk
 * Description : Symbols layer keymap for Keeb Utils
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script intercepts the physical <Left Alt> key and maps it to the F23
 * virtual key to activate a dedicated keyboard layer for math operators,
 * programming symbols, and numbers.
 *
 * The Symbols layer maps functions to physical keys using scan codes. This
 * abstraction ensures that the keymap remains consistent across different
 * system keyboard layouts (e.g., QWERTY, QWERTZ, AZERTY).
 *
 * Layer Diagram:
 *      ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 *      |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 *      `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 *      ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 *      | § | ¥ | € | ` | – | ¿ | ¡ | , | . | ; | @ | ¬ | ¦ |Backspc|
 *      |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 *      | Tab |00 | 7 | 8 | 9 | # | % | + |{< | >}| _ | ! | ? | ^   |
 *      |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 *      | Caps | 0 | 4 | 5 | 6 | $ | * | - |[( | )]| " | | | Enter  |
 *      |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 *      |  Shift | 1 | 2 | 3 | = | ~ | : | & | / | \ | ' | Shift    |
 *      |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 *      | Ctrl |Win|$Sym| Space                | Alt|Win|Menu| Ctrl |
 *      `------'---'----'----------------------'----'---'----'------'
 *
 * References:
 * - Designing a Symbol Layer:
 *      https://getreuer.info/posts/keyboards/symbol-layer/index.html
 *
 * Documentation:
 * - AutoHotkey v2 How to Send Keystrokes:
 *      https://www.autohotkey.com/docs/v2/howto/SendKeys.htm
 * - Scan Codes:
 *      https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

#InputLevel 1
sc038::F23
#InputLevel 0

;; Function Row
F23 & sc001::return ;; Esc
F23 & sc03B::return ;; F1
F23 & sc03C::return ;; F2
F23 & sc03D::return ;; F3
F23 & sc03E::return ;; F4
F23 & sc03F::return ;; F5
F23 & sc040::return ;; F6
F23 & sc041::return ;; F7
F23 & sc042::return ;; F8
F23 & sc043::return ;; F9
F23 & sc044::return ;; F10
F23 & sc057::return ;; F11
F23 & sc058::return ;; F12

;; Numeric Row
F23 & sc029::Send "{Raw}§"  ;; QWERTY `~
F23 & sc002::Send "{Raw}¥"  ;; QWERTY 1!
F23 & sc003::Send "{Raw}€"  ;; QWERTY 2@
F23 & sc004::Send "{Raw}``" ;; QWERTY 3#
F23 & sc005::Send "{Raw}–"  ;; QWERTY 4$
F23 & sc006::Send "{Raw}¿"  ;; QWERTY 5%
F23 & sc007::Send "{Raw}¡"  ;; QWERTY 6^
F23 & sc008::Send "{Raw},"  ;; QWERTY 7&
F23 & sc009::Send "{Raw}."  ;; QWERTY 8*
F23 & sc00A::Send "{Raw};"  ;; QWERTY 9(
F23 & sc00B::Send "{Raw}@"  ;; QWERTY 0)
F23 & sc00C::Send "{Raw}¬"  ;; QWERTY -_
F23 & sc00D::Send "{Raw}¦"  ;; QWERTY =+

;; Top Row
F23 & sc010::Send "{Raw}00" ;; QWERTY qQ
F23 & sc011::Send "{Raw}7"  ;; QWERTY wW
F23 & sc012::Send "{Raw}8"  ;; QWERTY eE
F23 & sc013::Send "{Raw}9"  ;; QWERTY rR
F23 & sc014::Send "{Raw}#"  ;; QWERTY tT
F23 & sc015::Send "{Raw}%"  ;; QWERTY yY
F23 & sc016::Send "{Raw}+"  ;; QWERTY uU
F23 & sc017::               ;; QWERTY iI
{
    if (GetKeyState("Shift")) {
        Send "{Raw}{"
    } else {
        Send "{Raw}<"
    }
}
F23 & sc018::               ;; QWERTY oO
{
    if (GetKeyState("Shift")) {
        Send "{Raw}}"
    } else {
        Send "{Raw}>"
    }
}
F23 & sc019::Send "{Raw}_"  ;; QWERTY pP
F23 & sc01A::Send "{Raw}!"  ;; QWERTY [{
F23 & sc01B::Send "{Raw}?"  ;; QWERTY ]}
F23 & sc02B::Send "{Raw}^"  ;; QWERTY \|

;; Home Row
F23 & sc01E::Send "{Raw}0"  ;; QWERTY aA
F23 & sc01F::Send "{Raw}4"  ;; QWERTY sS
F23 & sc020::Send "{Raw}5"  ;; QWERTY dD
F23 & sc021::Send "{Raw}6"  ;; QWERTY fF
F23 & sc022::Send "{Raw}$"  ;; QWERTY gG
F23 & sc023::Send "{Raw}*"  ;; QWERTY hH
F23 & sc024::Send "{Raw}-"  ;; QWERTY jJ
F23 & sc025::               ;; QWERTY kK
{
    if (GetKeyState("Shift")) {
        Send "{Raw}["
    } else {
        Send "{Raw}("
    }
}
F23 & sc026::               ;; QWERTY lL
{
    if (GetKeyState("Shift")) {
        Send "{Raw}]"
    } else {
        Send "{Raw})"
    }
}
F23 & sc027::Send "{Raw}`"" ;; QWERTY ;:
F23 & sc028::Send "{Raw}|"  ;; QWERTY '"

;; Bottom Row
F23 & sc02C::Send "{Raw}1"  ;; QWERTY zZ
F23 & sc02D::Send "{Raw}2"  ;; QWERTY xX
F23 & sc02E::Send "{Raw}3"  ;; QWERTY cC
F23 & sc02F::Send "{Raw}="  ;; QWERTY vV
F23 & sc030::Send "{Raw}~"  ;; QWERTY bB
F23 & sc031::Send "{Raw}:"  ;; QWERTY nN
F23 & sc032::Send "{Raw}&"  ;; QWERTY mM
F23 & sc033::Send "{Raw}/"  ;; QWERTY ,<
F23 & sc034::Send "{Raw}\"  ;; QWERTY .>
F23 & sc035::Send "{Raw}'"  ;; QWERTY /?
