/*
 * File        : colemak-dh-ansi.ahk
 * Description : AutoHotkey keyboard layout configuration file (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * This script creates a scan code-to-character/virtual key translation
 * layer bypassing the keyboard layout of the operating system. AutoHotkey
 * intercepts the scan codes from the keyboard and remaps the output of:
 * - Alphanumeric keys using key names ('a'-'z') bypassing the OS layout.
 * - Symbol keys using virtual keys ('vkXX') where the output of the keys
 *  depends on the active keyboard layout of the OS.
 *
 * The below keymap is only true for the symbol keys (, . = etc.) if the
 * active keyboard layout is US QWERTY:
 * ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 * |Esc| | F1| F2| F3| F4|  | F5| F6| F7| F8|  | F9|F10|F11|F12|
 * `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 * | ` | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 | [ | ] |Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 * | Tab | Q | W | F | P | B | J | L | U | Y | ; | - | = | \   |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 * | Caps | A | R | S | T | G | M | N | E | I | O | ' | Enter  |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 * |  Shift | X | C | D | V | Z | K | H | , | . | / | Shift    |
 * |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 * | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 * `------'---'----'----------------------'----'---'----'------'
 *
 * Colemak-DH Authorship:
 * Colemak © Shai Coleman -- https://colemak.com
 * Mod-DH © stevep99 -- https://colemakmods.github.io/mod-dh
 *
 * Keyboard Scan Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
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
sc011::w        ;; QWERTY wW
sc012::f        ;; QWERTY eE
sc013::p        ;; QWERTY rR
sc014::b        ;; QWERTY tT
sc015::j        ;; QWERTY yY
sc016::l        ;; QWERTY uU
sc017::u        ;; QWERTY iI
sc018::y        ;; QWERTY oO
sc019::vkBA     ;; QWERTY pP
sc01A::vkBD     ;; QWERTY [{
sc01B::vkBB     ;; QWERTY ]}
sc02D::vkDC     ;; QWERTY \|

;; Home Row
sc01E::a        ;; QWERTY aA
sc01F::r        ;; QWERTY sS
sc020::s        ;; QWERTY dD
sc021::t        ;; QWERTY fF
sc022::g        ;; QWERTY gG
sc023::m        ;; QWERTY hH
sc024::n        ;; QWERTY jJ
sc025::e        ;; QWERTY kK
sc026::i        ;; QWERTY lL
sc027::o        ;; QWERTY ;:
sc028::vkDE     ;; QWERTY '"

;; Bottom Row
sc02C::x        ;; QWERTY zZ
sc02D::c        ;; QWERTY xX
sc02E::d        ;; QWERTY cC
sc02F::v        ;; QWERTY vV
sc030::z        ;; QWERTY bB
sc031::k        ;; QWERTY nN
sc032::h        ;; QWERTY mM
sc033::vkBC     ;; QWERTY ,<
sc034::vkBE     ;; QWERTY .>
sc035::vkBF     ;; QWERTY /?
