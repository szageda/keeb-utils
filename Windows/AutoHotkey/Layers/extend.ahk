/*
 * File        : extend.ahk
 * Description : Extend layer keymap for Keeb Utils
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script implements the Extend layer concept. It maps the F24
 * virtual key as a layer-toggle to transform alphanumeric keys into
 * functional tools (navigation, media, and editing).
 *
 * This layer uses Scan Codes (sc###) rather than Virtual Keys to ensure
 * the keymap remains consistent across different system keyboard layouts.
 *
 * Layer Diagram:
 * ,---. ,---,---,---,---.  ,---,---,---,---.  ,---,---,---,---.
 * |   | |   |   |   |   |  |   |   |   |   |  |   |   |   |   |
 * `---' `---'---'---'---'  `---'---'---'---'  `---'---'---'---'
 * ,---,---,---,---,---,---,---,---,---,---,---,---,---,-------.
 * |Esc| F1| F2| F3| F4| F5| F6| F7| F8| F9|F10|F11|F12|Backspc|
 * |---'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-----|
 * | Tab |Ins|Spc|VlD|VlU|Mut|PgU|Hom| Up|End|PSc|NLk|SLk|     |
 * |-----',--',--',--',--',--',--',--',--',--',--',--',--'-----|
 * | Caps |Win|Tab|Alt|Ctl| PP|PgD|Lft|Dwn|Rht|Ent|Cps| Enter  |
 * |------'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'-,-'--------|
 * |  Shift | ^Z| ^X| ^C| ^V| ^Y|Esc|Bsp|Del|Prv|Nxt| Shift    |
 * |------,-'-,-'--,'---'---'---'---'---'-,-'--,'--,'---,------|
 * | Ctrl |Win|Alt | Shift                | Alt|Win|Menu| Ctrl |
 * `------'---'----'----------------------'----'---'----'------'
 *
 * References:
 *  DreymaR's Extend Layer: https://dreymar.colemak.org/layers-extend.html
 *
 * Documentation:
 *  AutoHotkey v2 Quick Reference: https://autohotkey.com/docs/v2/
 *  Scan Codes: https://www.freepascal.org/docs-html/rtl/keyboard/kbdscancode.html
 */

#Include Lib/multi-sticky.ahk
#Include Lib/sticky-key.ahk

;; Remap Caps Lock to F24 to serve as the 'Extend' layer-toggle.
#InputLevel 1
CapsLock::F24
#InputLevel 0

;; Force Caps Lock to remain off to prevent the physical LED from toggling.
SetCapsLockState "AlwaysOff"

;; Function Row
F24 & sc001::return                                 ;; Esc
F24 & sc03B::return                                 ;; F1
F24 & sc03C::return                                 ;; F2
F24 & sc03D::return                                 ;; F3
F24 & sc03E::return                                 ;; F4
F24 & sc03F::return                                 ;; F5
F24 & sc040::return                                 ;; F6
F24 & sc041::return                                 ;; F7
F24 & sc042::return                                 ;; F8
F24 & sc043::return                                 ;; F9
F24 & sc044::return                                 ;; F10
F24 & sc057::return                                 ;; F11
F24 & sc058::return                                 ;; F12

;; Numeric Row
F24 & sc029::Send "{Blind}{Escape}"                 ;; QWERTY `~
F24 & sc002::Send "{Blind}{F1}"                     ;; QWERTY 1!
F24 & sc003::Send "{Blind}{F2}"                     ;; QWERTY 2@
F24 & sc004::Send "{Blind}{F3}"                     ;; QWERTY 3#
F24 & sc005::Send "{Blind}{F4}"                     ;; QWERTY 4$
F24 & sc006::Send "{Blind}{F5}"                     ;; QWERTY 5%
F24 & sc007::Send "{Blind}{F6}"                     ;; QWERTY 6^
F24 & sc008::Send "{Blind}{F7}"                     ;; QWERTY 7&
F24 & sc009::Send "{Blind}{F8}"                     ;; QWERTY 8*
F24 & sc00A::Send "{Blind}{F9}"                     ;; QWERTY 9(
F24 & sc00B::Send "{Blind}{F10}"                    ;; QWERTY 0)
F24 & sc00C::Send "{Blind}{F11}"                    ;; QWERTY -_
F24 & sc00D::Send "{Blind}{F12}"                    ;; QWERTY =+

;; Top Row
F24 & sc010::Send "{Blind}{Insert}"                 ;; QWERTY qQ
F24 & sc011::Send "{Blind}{Space}"                  ;; QWERTY wW
F24 & sc012::Send "{Volume_Down}"                   ;; QWERTY eE
F24 & sc013::Send "{Volume_Up}"                     ;; QWERTY rR
F24 & sc014::Send "{Volume_Mute}"                   ;; QWERTY tT
F24 & sc015::Send "{Blind}{PgUp}"                   ;; QWERTY yY
F24 & sc016::Send "{Blind}{Home}"                   ;; QWERTY uU
F24 & sc017::Send "{Blind}{Up}"                     ;; QWERTY iI
F24 & sc018::Send "{Bind}{End}"                     ;; QWERTY oO
F24 & sc019::PrintScreen                            ;; QWERTY pP
F24 & sc01A::NumLock                                ;; QWERTY [{
F24 & sc01B::ScrollLock                             ;; QWERTY ]}
F24 & sc02B::return                                 ;; QWERTY \|

;; Home Row
F24 & sc01E::Send "{Blind}{LWin Down}"              ;; QWERTY aA
F24 & sc01E Up::Send "{Blind}{LWin Up}"
F24 & sc01F::Send "{Blind}{Tab}"                    ;; QWERTY sS
F24 & sc020::MultiSticky(120, "Alt", 280, "Shift")  ;; QWERTY dD
F24 & sc021::MultiSticky(120, "Ctrl", 280, "Shift") ;; QWERTY fF
F24 & sc022::Send "{Media_Play_Pause}"              ;; QWERTY gG
F24 & sc023::Send "{Blind}{PgDn}"                   ;; QWERTY hH
F24 & sc024::Send "{Blind}{Left}"                   ;; QWERTY jJ
F24 & sc025::Send "{Blind}{Down}"                   ;; QWERTY kK
F24 & sc026::Send "{Blind}{Right}"                  ;; QWERTY lL
F24 & sc027::Send "{Blind}{Enter}"                  ;; QWERTY ;:
F24 & sc028::                                       ;; QWERTY '"
{
    SetCapsLockState GetKeyState("CapsLock", "T")
    ? "AlwaysOff"
    : "AlwaysOn"
}

;; Bottom Row
F24 & sc02C::Send "{Ctrl Down}{z}{Ctrl Up}"         ;; QWERTY zZ
F24 & sc02D::Send "{Ctrl Down}{x}{Ctrl Up}"         ;; QWERTY xX
F24 & sc02E::Send "{Ctrl Down}{c}{Ctrl Up}"         ;; QWERTY cC
F24 & sc02F::Send "{Ctrl Down}{v}{Ctrl Up}"         ;; QWERTY vV
F24 & sc030::Send "{Ctrl Down}{y}{Ctrl Up}"         ;; QWERTY bB
F24 & sc031::Send "{Blind}{Escape}"                 ;; QWERTY nN
F24 & sc032::Send "{Blind}{Backspace}"              ;; QWERTY mM
F24 & sc033::Send "{Blind}{Delete}"                 ;; QWERTY ,<
F24 & sc034::Send "{Media_Prev}"                    ;; QWERTY .>
F24 & sc035::Send "{Media_Next}"                    ;; QWERTY /?

;; Misc. Keys
F24 & sc039::StickyKey(280, "Shift")                ;; Space
