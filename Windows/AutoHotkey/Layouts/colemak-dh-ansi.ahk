/*
 * File        : colemak-dh-ansi.ahk
 * Description : AutoHotkey keyboard layout configuration file
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * Colemak-DH is an improvement over the standard Colemak keyboard layout by
 * replacing the D and H keys thus reducing lateral movement of the index
 * fingers.
 *
 * Colemak Authorship:
 * Shai Coleman
 * https://colemak.com
 *
 * Colemak-DH Authorship:
 * stevep99
 * https://colemakmods.github.io/mod-dh/
 *
 * Remaps the software keyboard layout from QWERTY to Colemak-DH by moving the
 * host layout's VirtualKeys around.
 *
 * AutoHotkey only ignores the keymaps of the OS host layout on the Base and
 * Shift layers (layers 0 and 1) for alphabetic keys. But it keeps the keymaps
 * for the numeric Shift layer, AltGr, and AltGr+Shift layers (layers 6 and 7).
 * This means that the output of Shift+4 and AltGr+a depends on the active host
 * keyboard layout. Such remapped layouts prevent the use of hotstrings, e.g.
 * typing "btw" outputs "by the way".
 *
 * The below keymap is only true for the non-alphabetic and non-numeric keys
 * if the active host keyboard layout is US QWERTY.
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │Esc│   │ F1│ F2│ F3│ F4│ │ F5│ F6│ F7│ F8│ │ F9│F10│F11│F12│
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │ ` │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ 0 │ [ │ ] │Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ Q │ W │ F │ P │ B │ J │ L │ U │ Y │ ; │ - │ = │  \  │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ A │ R │ S │_T_│ G │ M │_N_│ E │ I │ O │ ' │  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ X │ C │ D │ V │ Z │ K │ H │ , │ . │ / │   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│          Space         │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; -- KEYMAP ------------------------------------------------------------------
;;
;; Formatting:
;;  scancode::VirtualKey ;; comments

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
