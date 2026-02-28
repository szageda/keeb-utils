/*
 * File        : numpad.ahk
 * Description : Numpad layer keymap for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 */

NumpadMode := false

#HotIf GetKeyState("sc038","P")
sc02A:: {
    global NumpadMode
    NumpadMode := true

    if KeyWait("sc038") {
        NumpadMode := false
    }
}
sc02A Up:: {
    global NumpadMode
    NumpadMode := false
}
#HotIf
