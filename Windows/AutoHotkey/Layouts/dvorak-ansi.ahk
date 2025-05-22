/*
 * File        : dvorak-ansi.ahk
 * Description : AutoHotkey keyboard layout configuration file (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * AutoHotkey remaps the software keyboard layout from QWERTY to Dvorak
 * by moving the host layout's virtual keys around: AutoHotkey captures the
 * scan code sent by the keyboard, and maps a virtual key to it which is then
 * emitted by the operating system. Such keyboard layout remaps prevent the
 * use of hotstrings, for example: '::btw::by the way' -- typing "btw"
 * outputs "by the way".
 *
 * The below keymap is only true for the symbol keys (, . = etc.) if US QWERTY
 * is the current keyboard layout as what character is actually emitted always
 * depends on the active keyboard layout of the operating system:
 * ╭───╮ ╭───┬───┬───┬───╮  ╭───┬───┬───┬───╮  ╭───┬───┬───┬───╮
 * │Esc│ │ F1│ F2│ F3│ F4│  │ F5│ F6│ F7│ F8│  │ F9│F10│F11│F12│
 * ╰───╯ ╰───┴───┴───┴───╯  ╰───┴───┴───┴───╯  ╰───┴───┴───┴───╯
 * ╭───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────╮
 * │ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ [ │ ] │Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ ' │ , │ . │ P │ Y │ F │ G │ C │ R │ L │ / │ = │ \   │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ A │ O │ E │ U │ I │ D │ H │ T │ N │ S │ - │ Enter  │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │ Shift  │ ; │ Q │ J │ K │ X │ B │ M │ W │ V │ Z │ Shift    │
 * ├──────┬─┴─┬─┴──┬┴───┴───┴───┴───┴───┴─┬─┴──┬┴──┬┴───┬──────┤
 * │ Ctrl │Win│ Alt│ Space                │ Alt│Win│Menu│ Ctrl │
 * ╰──────┴───┴────┴──────────────────────┴────┴───┴────┴──────╯
 *
 * Dvorak Keyboard Layout:
 * https://dvorak-keyboard.com
 *
 * Keyboard Scan Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; -- KEYMAP ------------------------------------------------------------------
;;
;; The keymap tells AutoHotkey which scan codes to capture from the keyboard
;; and which virtual key to assign to them.

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
sc010::vkDE     ;; QWERTY qQ
sc011::vkBC     ;; QWERTY wW
sc012::vkBE     ;; QWERTY eE
sc013::p        ;; QWERTY rR
sc014::y        ;; QWERTY tT
sc015::f        ;; QWERTY yY
sc016::g        ;; QWERTY uU
sc017::c        ;; QWERTY iI
sc018::r        ;; QWERTY oO
sc019::l        ;; QWERTY pP
sc01A::vkBF     ;; QWERTY [{
sc01B::vkBB     ;; QWERTY ]}
sc02D::vkDC     ;; QWERTY \|

;; Home Row
sc01E::a        ;; QWERTY aA
sc01F::o        ;; QWERTY sS
sc020::e        ;; QWERTY dD
sc021::u        ;; QWERTY fF
sc022::i        ;; QWERTY gG
sc023::d        ;; QWERTY hH
sc024::h        ;; QWERTY jJ
sc025::t        ;; QWERTY kK
sc026::n        ;; QWERTY lL
sc027::s        ;; QWERTY ;:
sc028::vkBD     ;; QWERTY '"

;; Bottom Row
sc02C::vkBA     ;; QWERTY zZ
sc02D::q        ;; QWERTY xX
sc02E::j        ;; QWERTY cC
sc02F::k        ;; QWERTY vV
sc030::x        ;; QWERTY bB
sc031::b        ;; QWERTY nN
sc032::m        ;; QWERTY mM
sc033::w        ;; QWERTY ,<
sc034::v        ;; QWERTY .>
sc035::z        ;; QWERTY /?