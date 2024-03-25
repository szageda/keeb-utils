/*
 * File        : symbols.ahk
 * Description : Keeb Utils Symbols keyboard layer
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * 'Symbols layer' adds a special layer dedicated for easier symbol and digit
 * access. The layer is activated by a dedicated key (Alt).
 *
 * Notes: Alt-Tab functionality is lost when when the Symbols key is 'Alt'. It
 * can be regained by Utility layer or some other AutoHotkey hacks. Refer to
 * https://www.autohotkey.com/docs/v2/Hotkeys.htm#alttab.
 *
 * This keymap stays persistent regardless of the active host keyboard layout,
 * because the functions are mapped to the physical key locations (scancodes).
 *
 * ┌───┐   ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐ ┌───┬───┬───┬───┐
 * │   │   │   │   │   │   │ │   │   │   │   │ │   │   │   │   │
 * └───┘   └───┴───┴───┴───┘ └───┴───┴───┴───┘ └───┴───┴───┴───┘
 * ┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
 * │   │   │   │   │   │   │   │   │   │   │   │   │   │Backspc│
 * ├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
 * │ Tab │ %€│ ^£│ &¥│ *¢│   │   │ [7│ ]8│ _9│ :-│ ¡ │   │     │
 * ├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
 * │ Caps │ «‹│ »›│ “‘│ ”’│   │   │ (4│ )5│ -6│ =+│ ¿ │  Enter │
 * ├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
 * │  Shift │ §°│ „‚│ –—│ {/│ `~│ }\│ !0│ @1│ #2│ $3│   Shift  │
 * ├────┬───┴┬──┴─┬─┴───┴───┴───┴───┴───┴──┬┴───┼───┴┬────┬────┤
 * │Ctrl│ Win│ Alt│                        │RAlt│ Fn │Menu│RCtl│
 * └────┴────┴────┴────────────────────────┴────┴────┴────┴────┘
 */

;; Define the Symbols layer key
#InputLevel 1
LAlt::F23   ; Maps LAlt to F23 VirtualKey which activates the layer
#InputLevel 0

;; Note: Where function is 'Return' are unassigned.
;; Formatting:
;F23 & Scancode::Send "{key combination or function}"

;; Numeric Row
F23 & SC001::Return         ; QWERTY `~
F23 & SC002::Return         ; QWERTY 1!
F23 & SC003::Return         ; QWERTY 2@
F23 & SC004::Return         ; QWERTY 3#
F23 & SC005::Return         ; QWERTY 4$
F23 & SC006::Return         ; QWERTY 5%
F23 & SC007::Return         ; QWERTY 6^
F23 & SC008::Return         ; QWERTY 7&
F23 & SC009::Return         ; QWERTY 8*
F23 & SC00a::Return         ; QWERTY 9(
F23 & SC00b::Return         ; QWERTY 0)
F23 & SC00c::Return         ; QWERTY -_
F23 & SC00d::Return         ; QWERTY =+

;; Top Row
F23 & SC010::               ; QWERTY qQ
{
    if GetKeyState("Shift")
        Send "{Raw}€"
    else
        Send "{Raw}%"
}
F23 & SC011::               ; QWERTY wW
{
    if GetKeyState("Shift")
        Send "{Raw}£"
    else
        Send "{Raw}^"
}
F23 & SC012::               ; QWERTY eE
{
    if GetKeyState("Shift")
        Send "{Raw}¥"
    else
        Send "{Raw}&"
}
F23 & SC013::               ; QWERTY rR
{
    if GetKeyState("Shift")
        Send "{Raw}¢"
    else
        Send "{Raw}*"
}
F23 & SC014::Return         ; QWERTY tT
F23 & SC015::Return         ; QWERTY yY
F23 & SC016::               ; QWERTY uU
{
    if GetKeyState("Shift")
        Send "{Raw}7"
    else
        Send "{Raw}["
}
F23 & SC017::               ; QWERTY iI
{
    if GetKeyState("Shift")
        Send "{Raw}8"
    else
        Send "{Raw}]"
}
F23 & SC018::               ; QWERTY oO
{
    if GetKeyState("Shift")
        Send "{Raw}9"
    else
        Send "{Raw}_"
}
F23 & SC019::               ; QWERTY pP
{
    if GetKeyState("Shift")
        Send "{Raw}-"
    else
        Send "{Raw}:"
}
F23 & SC01a::Send "{Raw}¡"  ; QWERTY [{
F23 & SC01b::Return         ; QWERTY ]}
F23 & SC02b::Return         ; QWERTY \|

;; Home Row
F23 & SC01e::               ; QWERTY aA
{
    if GetKeyState("Shift")
        Send "{Raw}‹"
    else
        Send "{Raw}«"
}
F23 & SC01f::               ; QWERTY sS
{
    if GetKeyState("Shift")
        Send "{Raw}›"
    else
        Send "{Raw}»"
}
F23 & SC020::               ; QWERTY dD
{
    if GetKeyState("Shift")
        Send "{Raw}‘"
    else
        Send "{Raw}“"
}
F23 & SC021::               ; QWERTY fF
{
    if GetKeyState("Shift")
        Send "{Raw}’"
    else
        Send "{Raw}”"
}
F23 & SC022::Return         ; QWERTY gG
F23 & SC023::Return         ; QWERTY hH
F23 & SC024::               ; QWERTY jJ
{
    if GetKeyState("Shift")
        Send "{Raw}4"
    else
        Send "{Raw}("
}
F23 & SC025::               ; QWERTY kK
{
    if GetKeyState("Shift")
        Send "{Raw}5"
    else
        Send "{Raw})"
}
F23 & SC026::               ; QWERTY lL
{
    if GetKeyState("Shift")
        Send "{Raw}6"
    else
        Send "{Raw}-"
}
F23 & SC027::               ; QWERTY ;:
{
    if GetKeyState("Shift")
        Send "{Raw}+"
    else
        Send "{Raw}="
}
F23 & SC028::Send "{Raw}¿"  ; QWERTY '"

;; Bottom Row
F23 & SC02c::               ; QWERTY zZ
{
    if GetKeyState("Shift")
        Send "{Raw}°"
    else
        Send "{Raw}§"
}
F23 & SC02d::               ; QWERTY xX
{
    if GetKeyState("Shift")
        Send "{Raw}‚"
    else
        Send "{Raw}„"
}
F23 & SC02e::               ; QWERTY cC
{
    if GetKeyState("Shift")
        Send "{Raw}—"
    else
        Send "{Raw}–"
}
F23 & SC02f::               ; QWERTY vV
{
    if GetKeyState("Shift")
        Send "{Raw}/"
    else
        Send "{Raw}{"
}
F23 & SC030::               ; QWERTY bB
{
        if GetKeyState("Shift")
            Send "{Raw}~"
        else
            Send "{Raw}``"
}
F23 & SC031::               ; QWERTY nN
{
    if GetKeyState("Shift")
        Send "{Raw}\"
    else
        Send "{Raw}}"
}
F23 & SC032::               ; QWERTY mM
{
    if GetKeyState("Shift")
        Send "{Raw}0"
    else
        Send "{Raw}!"
}
F23 & SC033::               ; QWERTY ,<
{
    if GetKeyState("Shift")
        Send "{Raw}1"
    else
        Send "{Raw}@"
}
F23 & SC034::              	; QWERTY .>
{
	if GetKeyState("Shift")
		Send "{Raw}2"
	else
		Send "{Raw}#"
}
F23 & SC035::             	; QWERTY /?
{
	if GetKeyState("Shift")
		Send "{Raw}3"
	else
		Send "{Raw}$"
}
