/*
 * File        : keeb-utils-icon.ahk
 * Description : AutoHotkey function to update the tray icon (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * This function changes the AutoHotkey tray icon and text on mouse hover
 * based on the application's state.
 */

;; Set the default icon and tooltip.
TraySetIcon("Icons\active.ico",, false)
A_IconTip := "Keeb Utils is active"

UpdateIcon()
{
    if A_IsSuspended = 1 {
        TraySetIcon("Icons\suspended.ico",, true)
        A_IconTip := "Keeb Utils is disabled"
    } else {
        TraySetIcon("Icons\active.ico",, false)
        A_IconTip := "Keeb Utils is active"
    }
}
