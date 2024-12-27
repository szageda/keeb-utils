/*
 * File        : utility.ahk
 * Description : Keeb Utils Utility keyboard layer
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * "Utility layer" extends the keyboard's current abilities and puts them onto
 * an extra layer activated by a dedicated key (Caps Lock).
 *
 * This keymap stays persistent regardless of the active host keyboard layout,
 * because the functions are mapped to the physical key locations (scancodes).
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │   │   │MPP│Vld│Vlu│Mut│ │Prv│Nxt│   │   │ │   │   │   │   │
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │Esc│ F1│ F2│ F3│ F4│ F5│ F6│ F7│ F8│ F9│F10│F11│F12│Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ ^S│Bck│ ^F│Fwd│Cps│PgU│Hom│ Up│End│SLk│NLk│   │     │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ ^A│Alt│LCt│Tab│Win│PgD│Lft│Dwn│Rht│Lst│Prt│  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ ^Z│ ^X│ ^C│ ^V│ ^Y│Del│Bsp│ ^H│Ins│Esc│   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│          Enter         │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; -- CONFIGURATION -----------------------------------------------------------

;; Utility layer keybind: Map Caps Lock to F24 VirtualKey which activates
;; the layer when held down.
#InputLevel 1
CapsLock::F24
#InputLevel 0

;; Turn off Caps Lock states: Disables the Caps Lock LED on your physical
;; keyboard, so it doesn't light up when Caps Lock is held.
SetCapsLockState "AlwaysOff"

;; -- KEYMAP ------------------------------------------------------------------
;;
;; Keys where the mapped function is "Return" are not used.
;;
;; Formatting:
;;  F24 & scancode::Send "{key combination or function}"   ;; comments

;; Function Row
F24 & sc001::Return                         ;; Esc
F24 & sc03B::Send "{Media_Play_Pause}"      ;; F1
F24 & sc03C::Send "{Volume_Down}"           ;; F2
F24 & sc03D::Send "{Volume_Up}"             ;; F3
F24 & sc03E::Send "{Volume_Mute}"           ;; F4
F24 & sc03F::Send "{Media_Prev}"            ;; F5
F24 & sc040::Send "{Media_Next}"            ;; F6
F24 & sc041::Return                         ;; F7
F24 & sc042::Return                         ;; F8
F24 & sc043::Return                         ;; F9
F24 & sc044::Return                         ;; F10
F24 & sc057::Return                         ;; F11
F24 & sc058::Return                         ;; F12

;; Numeric Row
F24 & sc029::Send "{Blind}{Escape}"         ;; QWERTY `~
F24 & sc002::Send "{Blind}{F1}"             ;; QWERTY 1!
F24 & sc003::Send "{Blind}{F2}"             ;; QWERTY 2@
F24 & sc004::Send "{Blind}{F3}"             ;; QWERTY 3#
F24 & sc005::Send "{Blind}{F4}"             ;; QWERTY 4$
F24 & sc006::Send "{Blind}{F5}"             ;; QWERTY 5%
F24 & sc007::Send "{Blind}{F6}"             ;; QWERTY 6^
F24 & sc008::Send "{Blind}{F7}"             ;; QWERTY 7&
F24 & sc009::Send "{Blind}{F8}"             ;; QWERTY 8*
F24 & sc00A::Send "{Blind}{F9}"             ;; QWERTY 9(
F24 & sc00B::Send "{Blind}{F10}"            ;; QWERTY 0)
F24 & sc00C::Send "{Blind}{F11}"            ;; QWERTY -_
F24 & sc00D::Send "{Blind}{F12}"            ;; QWERTY =+

;; Top Row
F24 & sc010::Send "{Ctrl Down}{s}{Ctrl Up}" ;; QWERTY qQ
F24 & sc011::Send "{Browser_Back}"          ;; QWERTY wW
F24 & sc012::Send "{Ctrl Down}{f}{Ctrl Up}" ;; QWERTY eE
F24 & sc013::Send "{Browser_Forward}"       ;; QWERTY rR
F24 & sc014::                               ;; QWERTY tT
{
    SetCapsLockState GetKeyState('CapsLock', 'T')
    ? 'AlwaysOff'
    : 'AlwaysOn'
}
F24 & sc015::Send "{Blind}{PgUp}"           ;; QWERTY yY
F24 & sc016::Send "{Blind}{Home}"           ;; QWERTY uU
F24 & sc017::Send "{Blind}{Up}"             ;; QWERTY iI
F24 & sc018::Send "{Bind}{End}"             ;; QWERTY oO
F24 & sc019::scrollLock                     ;; QWERTY pP
F24 & sc01A::NumLock                        ;; QWERTY [{
F24 & sc01B::Return                         ;; QWERTY ]}
F24 & sc02B::Return                         ;; QWERTY \|

;; Home Row
F24 & sc01E::Send "{Ctrl Down}{a}{Ctrl Up}" ;; QWERTY aA
F24 & sc01F::Send "{Blind}{LAlt Down}"      ;; QWERTY sS
F24 & sc01F Up::Send "{LAlt Up}"
F24 & sc020::Send "{Blind}{LCtrl Down}"     ;; QWERTY dD
F24 & sc020 Up::Send "{LCtrl Up}"
F24 & sc021::Send "{Blind}{Tab}"            ;; QWERTY fF
F24 & sc022::Send "{Blind}{LWin Down}"      ;; QWERTY gG
F24 & sc022 Up::Send "{LWin Up}"
F24 & sc023::Send "{Blind}{PgDn}"           ;; QWERTY hH
F24 & sc024::Send "{Blind}{Left}"           ;; QWERTY jJ
F24 & sc025::Send "{Blind}{Down}"           ;; QWERTY kK
F24 & sc026::Send "{Blind}{Right}"          ;; QWERTY lL
F24 & sc027::Send "{Blind}{LShift Down}"    ;; QWERTY ;:
F24 & sc027 Up::Send "{LShift Up}"
F24 & sc028::PrintScreen                    ;; QWERTY '"

;; Bottom Row
F24 & sc02C::Send "{Ctrl Down}{z}{Ctrl Up}" ;; QWERTY zZ
F24 & sc02D::Send "{Ctrl Down}{x}{Ctrl Up}" ;; QWERTY xX
F24 & sc02E::Send "{Ctrl Down}{c}{Ctrl Up}" ;; QWERTY cC
F24 & sc02F::Send "{Ctrl Down}{v}{Ctrl Up}" ;; QWERTY vV
F24 & sc030::Send "{Ctrl Down}{y}{Ctrl Up}" ;; QWERTY bB
F24 & sc031::Send "{Blind}{Delete}"         ;; QWERTY nN
F24 & sc032::Send "{Blind}{Backspace}"      ;; QWERTY mM
F24 & sc033::Send "{Ctrl Down}{h}{Ctrl Up}" ;; QWERTY ,<
F24 & sc034::Send "{Blind}{Ins}"            ;; QWERTY .>
F24 & sc035::Send "{Blind}{Escape}"         ;; QWERTY /?

;; Misc. Keys
F24 & sc039::Send "{Blind}{Enter}"          ;; Space
