/*
 * File        : keeb-utils-icon.ahk
 * Description : AutoHotkey function to update the tray icon for Keeb Utils
 * Copyright   : (c) 2025, Gergely Szabo
 * License     : MIT
 *
 * This script is responsible for updating AutoHotkey's tray icon and tooltip.
 *
 * Usage:
 *  The script file must be loaded when AutoHotkey starts. The 'UpdateIcon'
 *  function can be called from other scripts to update the tray icon and
 *  tooltip based on the current state of AutoHotkey.
 */

;; Set the default tray icon and tooltip.
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
