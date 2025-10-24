/*
 * File        : galliope-ansi.ahk
 * Description : AutoHotkey keyboard layout configuration file (Keeb Utils)
 * Copyright   : (c) 2025, Gergely Szabo
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
 * | Tab | B | L | D | C | Z | J | F | U | O | , | / | = | \   |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 * | Caps | N | R | T | S | G | Y | H | E | A | I | - | Enter  |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 * |  Shift | Q | M | W | V | X | K | P | ; | ' | . | Shift    |
 * |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 * | Ctrl |Win|Alt | Space                | Alt|Win|Menu| Ctrl |
 * `------'---'----'----------------------'----'---'----'------'
 *
 * Gallium Authorship:
 * © Bryson James -- https://github.com/GalileoBlues/Gallium
 * My modifications of Gallium with Angle Mod.
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
sc010::b        ;; QWERTY qQ
sc011::l        ;; QWERTY wW
sc012::d        ;; QWERTY eE
sc013::c        ;; QWERTY rR
sc014::z        ;; QWERTY tT
sc015::j        ;; QWERTY yY
sc016::f        ;; QWERTY uU
sc017::u        ;; QWERTY iI
sc018::o        ;; QWERTY oO
sc019::vkBC     ;; QWERTY pP
sc01A::vkBF     ;; QWERTY [{
sc01B::vkBB     ;; QWERTY ]}
sc02D::vkDC     ;; QWERTY \|

;; Home Row
sc01E::n        ;; QWERTY aA
sc01F::r        ;; QWERTY sS
sc020::t        ;; QWERTY dD
sc021::s        ;; QWERTY fF
sc022::g        ;; QWERTY gG
sc023::y        ;; QWERTY hH
sc024::h        ;; QWERTY jJ
sc025::e        ;; QWERTY kK
sc026::a        ;; QWERTY lL
sc027::i        ;; QWERTY ;:
sc028::vkBD     ;; QWERTY '"

;; Bottom Row
sc02C::q        ;; QWERTY zZ
sc02D::m        ;; QWERTY xX
sc02E::w        ;; QWERTY cC
sc02F::v        ;; QWERTY vV
sc030::x        ;; QWERTY bB
sc031::k        ;; QWERTY nN
sc032::p        ;; QWERTY mM
sc033::vkBA     ;; QWERTY ,<
sc034::vkDE     ;; QWERTY .>
sc035::vkBE     ;; QWERTY /?
