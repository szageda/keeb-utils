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
;;  Scacode::VirtualKey ;; comments

;; Numeric Row
;;SC01::vkC0    ;; QWERTY `~
;;SC02::1       ;; QWERTY 1!
;;SC03::2       ;; QWERTY 2@
;;SC04::3       ;; QWERTY 3#
;;SC05::4       ;; QWERTY 4$
;;SC06::5       ;; QWERTY 5%
;;SC07::6       ;; QWERTY 6^
;;SC08::7       ;; QWERTY 7&
;;SC09::8       ;; QWERTY 8*
;;SC0a::9       ;; QWERTY 9(
;;SC0b::0       ;; QWERTY 0)
SC0c::vkDB      ;; QWERTY -_
SC0d::vkDD      ;; QWERTY =+

;; Top Row
SC010::q        ;; QWERTY qQ
SC011::w        ;; QWERTY wW
SC012::f        ;; QWERTY eE
SC013::p        ;; QWERTY rR
SC014::b        ;; QWERTY tT
SC015::j        ;; QWERTY yY
SC016::l        ;; QWERTY uU
SC017::u        ;; QWERTY iI
SC018::y        ;; QWERTY oO
SC019::vkBA     ;; QWERTY pP
SC01a::vkBD     ;; QWERTY [{
SC01b::vkBB     ;; QWERTY ]}
SC02b::vkDC     ;; QWERTY \|

;; Home Row
SC01e::a        ;; QWERTY aA
SC01f::r        ;; QWERTY sS
SC020::s        ;; QWERTY dD
SC021::t        ;; QWERTY fF
SC022::g        ;; QWERTY gG
SC023::m        ;; QWERTY hH
SC024::n        ;; QWERTY jJ
SC025::e        ;; QWERTY kK
SC026::i        ;; QWERTY lL
SC027::o        ;; QWERTY ;:
SC028::vkDE     ;; QWERTY '"

;; Bottom Row
SC02c::x        ;; QWERTY zZ
SC02d::c        ;; QWERTY xX
SC02e::d        ;; QWERTY cC
SC02f::v        ;; QWERTY vV
SC030::z        ;; QWERTY bB
SC031::k        ;; QWERTY nN
SC032::h        ;; QWERTY mM
SC033::vkBC     ;; QWERTY ,<
SC034::vkBE     ;; QWERTY .>
SC035::vkBF     ;; QWERTY /?
