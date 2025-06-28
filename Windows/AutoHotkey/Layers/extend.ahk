/*
 * File        : extend.ahk
 * Description : AutoHotkey keyboard layer configuration file (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * AutoHotkey adds an "Extend" layer by defining new key shortcuts using the
 * F24 virtual key and physical key locations (scan codes), allowing functions
 * to be mapped to these new key combinations.
 *
 * The layer keymap stays persistent regardless of the active keyboard layout
 * of the operating system thanks to using scan codes instead of virtual keys:
 * ╭───╮ ╭───┬───┬───┬───╮  ╭───┬───┬───┬───╮  ╭───┬───┬───┬───╮
 * │   │ │   │   │   │   │  │   │   │   │   │  │   │   │   │   │
 * ╰───╯ ╰───┴───┴───┴───╯  ╰───┴───┴───┴───╯  ╰───┴───┴───┴───╯
 * ╭───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────╮
 * │Esc│ F1│ F2│ F3│ F4│ F5│ F6│ F7│ F8│ F9│F10│F11│F12│Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │Ins│VlD│Tab│VlU│Mut│PgU│Hom│ Up│End│Prt│NLk│Slk│     │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │Win│Alt│Sht│Ctl│PP │PgD│Lft│Dwn│Rht│Spc│Cps│ Enter  │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │ Shift  │ ^Z│ ^X│ ^C│ ^V│ ^Y│Esc│Bsp│Del│Prv│Nxt│ Shift    │
 * ├──────┬─┴─┬─┴──┬┴───┴───┴───┴───┴───┴─┬─┴──┬┴──┬┴───┬──────┤
 * │ Ctrl │Win│ Alt│ Enter                │ Alt│Win│Menu│ Ctrl │
 * ╰──────┴───┴────┴──────────────────────┴────┴───┴────┴──────╯
 *
 * Keyboard Scan Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; Map Caps Lock to F24 to activate the layer when held.
#InputLevel 1
CapsLock::F24
#InputLevel 0

;; Disable Caps Lock states, so the LED won't light up on your device.
SetCapsLockState "AlwaysOff"

;; Function Row
F24 & sc001::Return                         ;; Esc
F24 & sc03B::Return                         ;; F1
F24 & sc03C::Return                         ;; F2
F24 & sc03D::Return                         ;; F3
F24 & sc03E::Return                         ;; F4
F24 & sc03F::Return                         ;; F5
F24 & sc040::Return                         ;; F6
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
F24 & sc010::Send "{Blind}{Insert}"         ;; QWERTY qQ
F24 & sc011::Send "{Volume_Down}"           ;; QWERTY wW
F24 & sc012::Send "{Blind}{Tab}"            ;; QWERTY eE
F24 & sc013::Send "{Volume_Up}"             ;; QWERTY rR
F24 & sc014::Send "{Volume_Mute}"           ;; QWERTY tT
F24 & sc015::Send "{Blind}{PgUp}"           ;; QWERTY yY
F24 & sc016::Send "{Blind}{Home}"           ;; QWERTY uU
F24 & sc017::Send "{Blind}{Up}"             ;; QWERTY iI
F24 & sc018::Send "{Bind}{End}"             ;; QWERTY oO
F24 & sc019::PrintScreen                    ;; QWERTY pP
F24 & sc01A::NumLock                        ;; QWERTY [{
F24 & sc01B::ScrollLock                     ;; QWERTY ]}
F24 & sc02B::Return                         ;; QWERTY \|

;; Home Row
F24 & sc01E::Send "{Blind}{LWin Down}"      ;; QWERTY aA
F24 & sc01E Up::Send "{Blind}{LWin Up}"
F24 & sc01F::                               ;; QWERTY sS
{
    ;; Implement Sticky Key Behavior:
    ;; - On Tap: Sticky key with a timeout.
    ;; - On Hold: Act as a regular modifier.

    ;; On Tap
    Send "{Blind}{Alt Down}"
    Sleep 350   ;; Sticky time in milliseconds.

    ;; On Hold
    if !KeyWait("sc01F") {
        Send "{Blind}{Alt Down}"
    }

    ;; On Release
    KeyWait "sc01F"
    Send "{Alt Up}"
}
F24 & sc020::                               ;; QWERTY dD
{
    ;; Implement Sticky Key Behavior:
    ;; - On Tap: Sticky key with a timeout.
    ;; - On Hold: Act as a regular modifier.

    ;; On Tap
    Send "{Blind}{Shift Down}"
    Sleep 350   ;; Sticky time in milliseconds.

    ;; On Hold
    if !KeyWait("sc020") {
        Send "{Blind}{Shift Down}"
    }

    ;; On Release
    KeyWait "sc020"
    Send "{Shift Up}"
}
F24 & sc021::                               ;; QWERTY fF
{
    ;; Implement Sticky Key Behavior:
    ;; - On Tap: Sticky key with a timeout.
    ;; - On Hold: Act as a regular modifier.

    ;; On Tap
    Send "{Blind}{Ctrl Down}"
    Sleep 350   ;; Sticky time in milliseconds.

    ;; On Hold
    if !KeyWait("sc021") {
        Send "{Blind}{Ctrl Down}"
    }

    ;; On Release
    KeyWait "sc021"
    Send "{Ctrl Up}"
}
F24 & sc022::Send "{Media_Play_Pause}"      ;; QWERTY gG
F24 & sc023::Send "{Blind}{PgDn}"           ;; QWERTY hH
F24 & sc024::Send "{Blind}{Left}"           ;; QWERTY jJ
F24 & sc025::Send "{Blind}{Down}"           ;; QWERTY kK
F24 & sc026::Send "{Blind}{Right}"          ;; QWERTY lL
F24 & sc027::Send "{Blind}{Space}"          ;; QWERTY ;:
F24 & sc028::                               ;; QWERTY '"
{
    SetCapsLockState GetKeyState("CapsLock", "T")
    ? "AlwaysOff"
    : "AlwaysOn"
}

;; Bottom Row
F24 & sc02C::Send "{Ctrl Down}{z}{Ctrl Up}" ;; QWERTY zZ
F24 & sc02D::Send "{Ctrl Down}{x}{Ctrl Up}" ;; QWERTY xX
F24 & sc02E::Send "{Ctrl Down}{c}{Ctrl Up}" ;; QWERTY cC
F24 & sc02F::Send "{Ctrl Down}{v}{Ctrl Up}" ;; QWERTY vV
F24 & sc030::Send "{Ctrl Down}{y}{Ctrl Up}" ;; QWERTY bB
F24 & sc031::Send "{Blind}{Escape}"         ;; QWERTY nN
F24 & sc032::Send "{Blind}{Backspace}"      ;; QWERTY mM
F24 & sc033::Send "{Blind}{Delete}"         ;; QWERTY ,<
F24 & sc034::Send "{Media_Prev}"            ;; QWERTY .>
F24 & sc035::Send "{Media_Next}"            ;; QWERTY /?

;; Misc. Keys
F24 & sc039::Send "{Blind}{Enter}"          ;; Space
