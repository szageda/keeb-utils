/*
 * File        : pine-v4-variant.ahk
 * Description : Pine v4 Variant (ANSI) layout for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * This script implements a Pine v4 Variant layout by intercepting the scan
 * codes sent by the physical keyboard and remapping them to the layout's key
 * positions.
 *
 * Scan Code Key Remap Logic:
 * - Alphanumeric keys: Remap directly to keys (a-z) to bypass the OS
 *   keyboard layout.
 * - Symbol keys: Remap to Virtual Keys (vkXX) to ensure standard
 *   character output while maintaining the physical Pine v4 Variant position.
 *
 * Layout diagram when the OS is set to US QWERTY:
 *      ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 *      |Esc| | F1| F2| F3| F4|  | F5| F6| F7| F8|  | F9|F10|F11|F12|
 *      `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 *      ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 *      | ` | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] |Backspc|
 *      |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 *      | Tab | Q | L | C | M | K | - | F | O | U | Y | ; | = | \   |
 *      |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 *      |CapsLk| N | R | S | T | G | P | H | A | E | I | , | Enter  |
 *      |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 *      |  Shift | J | X | V | W | Z | B | D | ' | . | / | Shift    |
 *      |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 *      | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 *      `------'---'----'----------------------'----'---'----'------'
 *
 * References:
 * - Pine v4 (c) ClemenPine
 *      https://github.com/ClemenPine/pine
 *
 * Documentation:
 * - AutoHotkey v2 Hotkeys:
 *      https://www.autohotkey.com/docs/v2/Hotkeys.htm
 * - Scan Codes:
 *      https://sharktastica.co.uk/topics/keyboard-scancodes#HostConnXT
 * - Virtual Keys:
 *      https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; Function Row
;;sc001::Escape ;; Esc
;;sc03B::F1     ;; F1
;;sc03C::F2     ;; F2
;;sc03D::F3     ;; F3
;;sc03E::F4     ;; F4
;;sc03F::F5     ;; F5
;;sc040::F6     ;; F6
;;sc041::F7     ;; F7
;;sc042::F8     ;; F8
;;sc043::F9     ;; F9
;;sc044::F10    ;; F10
;;sc057::F11    ;; F11
;;sc058::F12    ;; F12

;; Numeric Row
;;sc029::vkC0   ;; QWERTY `~
;;sc002::1      ;; QWERTY 1!
;;sc003::2      ;; QWERTY 2@
;;sc004::3      ;; QWERTY 3#
;;sc005::4      ;; QWERTY 4$
;;sc006::5      ;; QWERTY 5%
;;sc007::6      ;; QWERTY 6^
;;sc008::7      ;; QWERTY 7&
;;sc009::8      ;; QWERTY 8*
;;sc00A::9      ;; QWERTY 9(
;;sc00B::0      ;; QWERTY 0)
sc00C::vkDB     ;; QWERTY -_
sc00D::vkDD     ;; QWERTY =+

;; Top Row
sc010::q        ;; QWERTY qQ
sc011::l        ;; QWERTY wW
sc012::c        ;; QWERTY eE
sc013::m        ;; QWERTY rR
sc014::k        ;; QWERTY tT
sc015::vkBD     ;; QWERTY yY
sc016::f        ;; QWERTY uU
sc017::o        ;; QWERTY iI
sc018::u        ;; QWERTY oO
sc019::y        ;; QWERTY pP
sc01A::vkBA     ;; QWERTY [{
sc01B::vkBB     ;; QWERTY ]}
sc02B::vkDC     ;; QWERTY \|

;; Home Row
sc01E::n        ;; QWERTY aA
sc01F::r        ;; QWERTY sS
sc020::s        ;; QWERTY dD
sc021::t        ;; QWERTY fF
sc022::g        ;; QWERTY gG
sc023::p        ;; QWERTY hH
sc024::h        ;; QWERTY jJ
sc025::a        ;; QWERTY kK
sc026::e        ;; QWERTY lL
sc027::i        ;; QWERTY ;:
sc028::vkBC     ;; QWERTY '"

;; Bottom Row
sc02C::j        ;; QWERTY zZ
sc02D::x        ;; QWERTY xX
sc02E::v        ;; QWERTY cC
sc02F::w        ;; QWERTY vV
sc030::z        ;; QWERTY bB
sc031::b        ;; QWERTY nN
sc032::d        ;; QWERTY mM
sc033::vkDE     ;; QWERTY ,<
sc034::vkBE     ;; QWERTY .>
sc035::vkBF     ;; QWERTY /?
