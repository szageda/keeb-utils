/*
 * File        : numpad.ahk
 * Description : Numpad layer keymap for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * This script implements a Numpad layer. It uses a chorded layer-toggle
 * (Left Alt + Space) to map alphanumeric keys to numeric and mathematical
 * functions.
 *
 * This layer uses Scan Codes (sc###) rather than Virtual Keys to ensure
 * the keymap remains consistent across different system keyboard layouts.
 *
 * Layer Diagram:
 * ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 * |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 * |   |   |   |   |   |   |   |   |   |   |   |   |   |Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 * | Tab | x | d | e | f | % | * | 7 | 8 | 9 | - |   |   |     |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 * | Caps | . | a | b | c | = | / | 4 | 5 | 6 | + |   | Enter  |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 * |  Shift | \ | , | : | _ | ^ | 0 | 1 | 2 | 3 | 00| Shift    |
 * |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 * | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 * `------'---'----'----------------------'----'---'----'------'
 *
 * Documentation:
 *  AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 *  Scan Codes: https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 */

#HotIf GetKeyState("sc038", "P") && GetKeyState("sc039", "P")

;; Suppress the native Spacebar output when the layer is active.
sc039::return

;; Function Row
sc039 & sc001::return                       ;; Esc
sc039 & sc03B::return                       ;; F1
sc039 & sc03C::return                       ;; F2
sc039 & sc03D::return                       ;; F3
sc039 & sc03E::return                       ;; F4
sc039 & sc03F::return                       ;; F5
sc039 & sc040::return                       ;; F6
sc039 & sc041::return                       ;; F7
sc039 & sc042::return                       ;; F8
sc039 & sc043::return                       ;; F9
sc039 & sc044::return                       ;; F10
sc039 & sc057::return                       ;; F11
sc039 & sc058::return                       ;; F12

;; Numeric Row
sc039 & sc029::return                       ;; QWERTY `~
sc039 & sc002::return                       ;; QWERTY 1!
sc039 & sc003::return                       ;; QWERTY 2@
sc039 & sc004::return                       ;; QWERTY 3#
sc039 & sc005::return                       ;; QWERTY 4$
sc039 & sc006::return                       ;; QWERTY 5%
sc039 & sc007::return                       ;; QWERTY 6^
sc039 & sc008::return                       ;; QWERTY 7&
sc039 & sc009::return                       ;; QWERTY 8*
sc039 & sc00A::return                       ;; QWERTY 9(
sc039 & sc00B::return                       ;; QWERTY 0)
sc039 & sc00C::return                       ;; QWERTY -_
sc039 & sc00D::return                       ;; QWERTY =+

;; Top Row
sc039 & sc010::x                            ;; QWERTY qQ
sc039 & sc011::d                            ;; QWERTY wW
sc039 & sc012::e                            ;; QWERTY eE
sc039 & sc013::f                            ;; QWERTY rR
sc039 & sc014::Send "{Raw}%"                ;; QWERTY tT
sc039 & sc015::Send "{Raw}*"                ;; QWERTY yY
sc039 & sc016::Send "{Raw}7"                ;; QWERTY uU
sc039 & sc017::Send "{Raw}8"                ;; QWERTY iI
sc039 & sc018::Send "{Raw}9"                ;; QWERTY oO
sc039 & sc019::Send "{Raw}-"                ;; QWERTY pP
sc039 & sc01A::return                       ;; QWERTY [{
sc039 & sc01B::return                       ;; QWERTY ]}
sc039 & sc02B::return                       ;; QWERTY \|

;; Home Row
sc039 & sc01E::Send "{Raw}."                ;; QWERTY aA
sc039 & sc01F::a                            ;; QWERTY sS
sc039 & sc020::b                            ;; QWERTY dD
sc039 & sc021::c                            ;; QWERTY fF
sc039 & sc022::Send "{Raw}="                ;; QWERTY gG
sc039 & sc023::Send "{Raw}/"                ;; QWERTY hH
sc039 & sc024::Send "{Raw}4"                ;; QWERTY jJ
sc039 & sc025::Send "{Raw}5"                ;; QWERTY kK
sc039 & sc026::Send "{Raw}6"                ;; QWERTY lL
sc039 & sc027::Send "{Raw}+"                ;; QWERTY ;:
sc039 & sc028::return                       ;; QWERTY '""

;; Bottom Row
sc039 & sc02C::Send "{Raw}\"                ;; QWERTY zZ
sc039 & sc02D::Send "{Raw},"                ;; QWERTY xX
sc039 & sc02E::Send "{Raw}:"                ;; QWERTY cC
sc039 & sc02F::Send "{Raw}_"                ;; QWERTY vV
sc039 & sc030::Send "{Raw}^"                ;; QWERTY bB
sc039 & sc031::Send "{Raw}0"                ;; QWERTY nN
sc039 & sc032::Send "{Raw}1"                ;; QWERTY mM
sc039 & sc033::Send "{Raw}2"                ;; QWERTY ,<
sc039 & sc034::Send "{Raw}3"                ;; QWERTY .>
sc039 & sc035::Send "{Raw}00"               ;; QWERTY /?

#HotIf
