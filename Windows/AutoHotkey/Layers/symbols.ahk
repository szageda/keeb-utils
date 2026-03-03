/*
 * File        : symbols.ahk
 * Description : Symbols layer keymap for Keeb Utils
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script creates a dedicated Symbols layer. It maps the F23 virtual key to <Left Alt> to
 * activate the layer. It provides immediate access to programming symbols, mathematical operators.
 *
 * The Symbols layer maps the functions to keys using scan codes to ensure the keymap remains
 * consistent across different system keyboard layouts.
 *
 * Layer Diagram:
 *      ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 *      |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 *      `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 *      ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 *      |   |   |   |   |   |   |   |   |   |   |   |   |   |Backspc|
 *      |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 *      | Tab | ! | { | } | ` | ^ | @ | ' | [ | ] | ~ |   |   |     |
 *      |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 *      | Caps | $ | < | > | = | # | : | - | ( | ) | * | ; | Enter  |
 *      |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 *      |  Shift | \ | / | _ | " |   | | | & | % | + | ? | Shift    |
 *      |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 *      | Ctrl |Win|$Sym| Space                | Alt|Win|Menu| Ctrl |
 *      `------'---'----'----------------------'----'---'----'------'
 *
 * References:
 * - Designing a Symbol Layer: https://getreuer.info/posts/keyboards/symbol-layer/index.html
 *
 * Documentation:
 * - AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 * - Scan Codes: https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 */

;; Remap <Left Alt>.
#InputLevel 1
sc038::F23
#InputLevel 0

;; Comment this line if you aren't loading "numpad.ahk" from "keeb-utils.ahk",
;; otherwise expect an error message about 'NumpadMode' being undefined.
#HotIf (NumpadMode = false)

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
F23 & sc029::return ;; QWERTY `~
F23 & sc002::return ;; QWERTY 1!
F23 & sc003::return ;; QWERTY 2@
F23 & sc004::return ;; QWERTY 3#
F23 & sc005::return ;; QWERTY 4$
F23 & sc006::return ;; QWERTY 5%
F23 & sc007::return ;; QWERTY 6^
F23 & sc008::return ;; QWERTY 7&
F23 & sc009::return ;; QWERTY 8*
F23 & sc00A::return ;; QWERTY 9(
F23 & sc00B::return ;; QWERTY 0)
F23 & sc00C::return ;; QWERTY -_
F23 & sc00D::return ;; QWERTY =+

;; Top Row
F23 & sc010::Send "{Raw}!"  ;; QWERTY qQ
F23 & sc011::Send "{Raw}{"  ;; QWERTY wW
F23 & sc012::Send "{Raw}}"  ;; QWERTY eE
F23 & sc013::Send "{Raw}``" ;; QWERTY rR
F23 & sc014::Send "{Raw}^"  ;; QWERTY tT
F23 & sc015::send "{Raw}@"  ;; QWERTY yY
F23 & sc016::Send "{Raw}'"  ;; QWERTY uU
F23 & sc017::Send "{Raw}["  ;; QWERTY iI
F23 & sc018::Send "{Raw}]"  ;; QWERTY oO
F23 & sc019::Send "{Raw}~"  ;; QWERTY pP
F23 & sc01A::return         ;; QWERTY [{
F23 & sc01B::return         ;; QWERTY ]}
F23 & sc02B::return         ;; QWERTY \|

;; Home Row
F23 & sc01E::Send "{Raw}$"  ;; QWERTY aA
F23 & sc01F::Send "{Raw}<"  ;; QWERTY sS
F23 & sc020::Send "{Raw}>"  ;; QWERTY dD
F23 & sc021::Send "{Raw}="  ;; QWERTY fF
F23 & sc022::Send "{Raw}#"  ;; QWERTY gG
F23 & sc023::Send "{Raw}:"  ;; QWERTY hH
F23 & sc024::Send "{Raw}-"  ;; QWERTY jJ
F23 & sc025::Send "{Raw}("  ;; QWERTY kK
F23 & sc026::Send "{Raw})"  ;; QWERTY lL
F23 & sc027::Send "{Raw}*"  ;; QWERTY ;:
F23 & sc028::Send "{Raw};"  ;; QWERTY '"

;; Bottom Row
F23 & sc02C::Send "{Raw}\"  ;; QWERTY zZ
F23 & sc02D::Send "{Raw}/"  ;; QWERTY xX
F23 & sc02E::Send "{Raw}_"  ;; QWERTY cC
F23 & sc02F::Send "{Raw}`"" ;; QWERTY vV
F23 & sc030::return         ;; QWERTY bB
F23 & sc031::Send "{Raw}|"  ;; QWERTY nN
F23 & sc032::Send "{Raw}&"  ;; QWERTY mM
F23 & sc033::Send "{Raw}%"  ;; QWERTY ,<
F23 & sc034::Send "{Raw}+"  ;; QWERTY .>
F23 & sc035::Send "{Raw}?"  ;; QWERTY /?

#HotIf
