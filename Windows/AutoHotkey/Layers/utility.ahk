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
;;  F24 & Scancode::Send "{key combination or function}"   ;; comments

;; Function Row
F24 & SC001::Return                         ;; Esc
F24 & SC03b::Send "{Media_Play_Pause}"      ;; F1
F24 & SC03c::Send "{Volume_Down}"           ;; F2
F24 & SC03d::Send "{Volume_Up}"             ;; F3
F24 & SC03e::Send "{Volume_Mute}"           ;; F4
F24 & SC03f::Send "{Media_Prev}"            ;; F5
F24 & SC040::Send "{Media_Next}"            ;; F6
F24 & SC041::Return                         ;; F7
F24 & SC042::Return                         ;; F8
F24 & SC043::Return                         ;; F9
F24 & SC044::Return                         ;; F10
F24 & SC057::Return                         ;; F11
F24 & SC058::Return                         ;; F12

;; Numeric Row
F24 & SC029::Send "{Blind}{Escape}"         ;; QWERTY `~
F24 & SC002::Send "{Blind}{F1}"             ;; QWERTY 1!
F24 & SC003::Send "{Blind}{F2}"             ;; QWERTY 2@
F24 & SC004::Send "{Blind}{F3}"             ;; QWERTY 3#
F24 & SC005::Send "{Blind}{F4}"             ;; QWERTY 4$
F24 & SC006::Send "{Blind}{F5}"             ;; QWERTY 5%
F24 & SC007::Send "{Blind}{F6}"             ;; QWERTY 6^
F24 & SC008::Send "{Blind}{F7}"             ;; QWERTY 7&
F24 & SC009::Send "{Blind}{F8}"             ;; QWERTY 8*
F24 & SC00a::Send "{Blind}{F9}"             ;; QWERTY 9(
F24 & SC00b::Send "{Blind}{F10}"            ;; QWERTY 0)
F24 & SC00c::Send "{Blind}{F11}"            ;; QWERTY -_
F24 & SC00d::Send "{Blind}{F12}"            ;; QWERTY =+

;; Top Row
F24 & SC010::Send "{Ctrl Down}{s}{Ctrl Up}" ;; QWERTY qQ
F24 & SC011::Send "{Browser_Back}"          ;; QWERTY wW
F24 & SC012::Send "{Ctrl Down}{f}{Ctrl Up}" ;; QWERTY eE
F24 & SC013::Send "{Browser_Forward}"       ;; QWERTY rR
F24 & SC014::                               ;; QWERTY tT
{
    SetCapsLockState GetKeyState('CapsLock', 'T')
    ? 'AlwaysOff'
    : 'AlwaysOn'
}
F24 & SC015::Send "{Blind}{PgUp}"           ;; QWERTY yY
F24 & SC016::Send "{Blind}{Home}"           ;; QWERTY uU
F24 & SC017::Send "{Blind}{Up}"             ;; QWERTY iI
F24 & SC018::Send "{Bind}{End}"             ;; QWERTY oO
F24 & SC019::ScrollLock                     ;; QWERTY pP
F24 & SC01a::NumLock                        ;; QWERTY [{
F24 & SC01b::Return                         ;; QWERTY ]}
F24 & SC02b::Return                         ;; QWERTY \|

;; Home Row
F24 & SC01e::Send "{Ctrl Down}{a}{Ctrl Up}" ;; QWERTY aA
F24 & SC01f::Send "{Blind}{LAlt Down}"      ;; QWERTY sS
F24 & SC01f Up::Send "{LAlt Up}"
F24 & SC020::Send "{Blind}{LCtrl Down}"     ;; QWERTY dD
F24 & SC020 Up::Send "{LCtrl Up}"
F24 & SC021::Send "{Blind}{Tab}"            ;; QWERTY fF
F24 & SC022::Send "{Blind}{LWin Down}"      ;; QWERTY gG
F24 & SC022 Up::Send "{LWin Up}"
F24 & SC023::Send "{Blind}{PgDn}"           ;; QWERTY hH
F24 & SC024::Send "{Blind}{Left}"           ;; QWERTY jJ
F24 & SC025::Send "{Blind}{Down}"           ;; QWERTY kK
F24 & SC026::Send "{Blind}{Right}"          ;; QWERTY lL
F24 & SC027::Send "{Blind}{LShift Down}"    ;; QWERTY ;:
F24 & SC027 Up::Send "{LShift Up}"
F24 & SC028::PrintScreen                    ;; QWERTY '"

;; Bottom Row
F24 & SC02c::Send "{Ctrl Down}{z}{Ctrl Up}" ;; QWERTY zZ
F24 & SC02d::Send "{Ctrl Down}{x}{Ctrl Up}" ;; QWERTY xX
F24 & SC02e::Send "{Ctrl Down}{c}{Ctrl Up}" ;; QWERTY cC
F24 & SC02f::Send "{Ctrl Down}{v}{Ctrl Up}" ;; QWERTY vV
F24 & SC030::Send "{Ctrl Down}{y}{Ctrl Up}" ;; QWERTY bB
F24 & SC031::Send "{Blind}{Delete}"         ;; QWERTY nN
F24 & SC032::Send "{Blind}{Backspace}"      ;; QWERTY mM
F24 & SC033::Send "{Ctrl Down}{h}{Ctrl Up}" ;; QWERTY ,<
F24 & SC034::Send "{Blind}{Ins}"            ;; QWERTY .>
F24 & SC035::Send "{Blind}{Escape}"         ;; QWERTY /?

;; Misc. Keys
F24 & SC039::Send "{Blind}{Enter}"          ;; Space
