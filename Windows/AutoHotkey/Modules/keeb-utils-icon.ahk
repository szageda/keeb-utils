/*
 * File        : keeb-utils-icon.ahk
 * Description : System tray status indicator for Keeb Utils
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This function updates the system tray icon and tooltip text to reflect
 * the current state (Active or Suspended) of the application.
 */

;; Initialize default tray icon and tooltip.
TraySetIcon("Icons\active.ico",, false)
A_IconTip := "Keeb Utils is active"

UpdateIcon() {
    if A_IsSuspended = 1 {
        TraySetIcon("Icons\suspended.ico",, true)
        A_IconTip := "Keeb Utils is disabled"
    } else {
        TraySetIcon("Icons\active.ico",, false)
        A_IconTip := "Keeb Utils is active"
    }
}
