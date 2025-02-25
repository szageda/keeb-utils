/*
 * File        : utility.ahk
 * Description : Keeb Utils Utility keyboard layer
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * AutoHotkey adds a "Utility" layer by defining new key combinations using the
 * F24 virtual key and physical key locations (scancodes), allowing functions
 * to be mapped to these new key combinations.
 *
 * The layer keymap stays persistent regardless of the active keyboard layout
 * of the operating system thanks to using scancodes instead of virtual keys:
 * ,---,  ,---,---,---,---,  ,---,---,---,---,  ,---,---,---,---,
 * |   |  |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * '---'  '---'---'---'---'  '---'---'---'---'  '---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,--------,
 * |Esc| F1| F2| F3| F4| F5| F6| F7| F8| F9|F10|F11|F12| Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,------|
 * | Tab |Prv|Bck|Fwd|VlD|VlU|Cps|Hom| Up|End| PP|Nlk|Slk|PrtScr|
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'------|
 * | Caps |Nxt|Tab|Alt|Lct|Win|Esc|Lft|Dwn|Rht|Lst|Mut| Enter   |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'---------|
 * |  Shift | ^Z| ^X| ^C| ^V| ^Y|Del|Bsp|Ins|PgD|PgU| Shift     |
 * |----,---'-,-'--,'---'---'---'---'---'--,'---',--'-,----,----|
 * |Ctrl| Win |Alt | Enter                 | RAlt| Win|Menu|Ctrl|
 * '----'-----'----'-----------------------'-----'----'----'----'
 *
 * Scancode Codes:
 * https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 *
 * Virtual Key Codes:
 * https://docs.microsoft.com/en-us/windows/desktop/inputdev/virtual-key-codes
 */

;; -- CONFIGURATION -----------------------------------------------------------

;; Map Caps Lock to F24 to activate the layer when held down
#InputLevel 1
CapsLock::F24
#InputLevel 0

;; Disable Caps Lock states, so the LED won't light up on your device
SetCapsLockState "AlwaysOff"

;; -- KEYMAP ------------------------------------------------------------------
;;
;; The keymap definitions map virtual keys or functions to Caps Lock+Some Key
;; combinations. Lines where the mapped function is "Return" means, those key
;; combinations won't emit anything.
;;
;; Formatting:
;;      F24 & scancode::virtualkey OR function  ;; comments

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
F24 & sc010::Send "{Media_Prev}"            ;; QWERTY qQ
F24 & sc011::Send "{Browser_Back}"          ;; QWERTY wW
F24 & sc012::Send "{Browser_Forward}"       ;; QWERTY eE
F24 & sc013::Send "{Volume_Down}"           ;; QWERTY rR
F24 & sc014::Send "{Volume_Up}"             ;; QWERTY tT
F24 & sc015::                               ;; QWERTY yY
{
    SetCapsLockState GetKeyState("CapsLock", "T")
    ? "AlwaysOff"
    : "AlwaysOn"
}
F24 & sc016::Send "{Blind}{Home}"           ;; QWERTY uU
F24 & sc017::Send "{Blind}{Up}"             ;; QWERTY iI
F24 & sc018::Send "{Bind}{End}"             ;; QWERTY oO
F24 & sc019::Send "{Media_Play_Pause}"      ;; QWERTY pP
F24 & sc01A::NumLock                        ;; QWERTY [{
F24 & sc01B::ScrollLock                     ;; QWERTY ]}
F24 & sc02B::PrintScreen                    ;; QWERTY \|

;; Home Row
F24 & sc01E::Send "{Media_Next}"            ;; QWERTY aA
F24 & sc01F::Send "{Blind}{Tab}"            ;; QWERTY sS
F24 & sc020::                               ;; QWERTY dD
{
    ;; Implement sticky key behavior:
    ;; Act as sticky key when tapped,
    ;; act as regular Alt when held.

    ;; When tapped
    Send "{Blind}{Alt Down}"
    Sleep 350           ;; Sticky time in milliseconds

    ;; When held
    If (!KeyWait("sc020")) {
        Send "{Blind}{Alt Down}"
    }
    KeyWait "sc020"     ;; Wait for key release
    Send "{Alt Up}"     ;; "Unsticky" the Alt key
}
F24 & sc021::                               ;; QWERTY fF
{
    ;; Implement sticky key behavior:
    ;; Act as sticky key when tapped,
    ;; act as regular Ctrl when held.

    ;; When tapped
    Send "{Blind}{Ctrl Down}"
    Sleep 350           ;; Sticky time in milliseconds

    ;; When held
    If (!KeyWait("sc021")) {
        Send "{Blind}{Ctrl Down}"
    }
    KeyWait "sc021"     ;; Wait for key release
    Send "{Ctrl Up}"    ;; "Unsticky" the Ctrl key
}
F24 & sc022::Send "{Blind}{LWin Down}"      ;; QWERTY gG
F24 & sc022 Up::Send "{LWin Up}"
F24 & sc023::Send "{Blind}{Escape}"         ;; QWERTY hH
F24 & sc024::Send "{Blind}{Left}"           ;; QWERTY jJ
F24 & sc025::Send "{Blind}{Down}"           ;; QWERTY kK
F24 & sc026::Send "{Blind}{Right}"          ;; QWERTY lL
F24 & sc027::Send "{Blind}{LShift Down}"    ;; QWERTY ;:
F24 & sc027 Up::Send "{LShift Up}"
F24 & sc028::Send "{Volume_Mute}"           ;; QWERTY '"

;; Bottom Row
F24 & sc02C::Send "{Ctrl Down}{z}{Ctrl Up}" ;; QWERTY zZ
F24 & sc02D::Send "{Ctrl Down}{x}{Ctrl Up}" ;; QWERTY xX
F24 & sc02E::Send "{Ctrl Down}{c}{Ctrl Up}" ;; QWERTY cC
F24 & sc02F::Send "{Ctrl Down}{v}{Ctrl Up}" ;; QWERTY vV
F24 & sc030::Send "{Ctrl Down}{y}{Ctrl Up}" ;; QWERTY bB
F24 & sc031::Send "{Blind}{Delete}"         ;; QWERTY nN
F24 & sc032::Send "{Blind}{Backspace}"      ;; QWERTY mM
F24 & sc033::Send "{Blind}{Ins}"            ;; QWERTY ,<
F24 & sc034::Send "{Blind}{PgDn}"           ;; QWERTY .>
F24 & sc035::Send "{Blind}{PgUp}"           ;; QWERTY /?

;; Misc. Keys
F24 & sc039::Send "{Blind}{Enter}"          ;; Space
