/*
 * File        : keeb-utils-menu.ahk
 * Description : Minimalist AutoHotkey tray icon menu for Keeb Utils
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * This script configures a custom menu for AutoHotkey.
 *
 * Usage:
 *  The script file must be loaded when AutoHotkey starts. The custom
 *  menu is accessible by right clicking the tray icon.
 */

#Include keeb-utils-icon.ahk

;; -- MENU ITEMS --------------------------------------------------------------
;;
;; This section contains the menu items visible to the user.

Tray := A_TrayMenu                  ;; for convenience
Tray.Delete()                       ;; delete the standard menu times
Tray.Add("Active", ChangeStatus)
Tray.Add("")                        ;; separator
Tray.Add("Reload", ReloadScripts)
;; ------------------------------------
;; Debug Submenu
DebugMenu := Menu()
DebugMenu.Add("History", OpenHistory)
DebugMenu.Add("Line Logging", LineLogging)
Tray.Add("Debug", DebugMenu)
;; ------------------------------------
Tray.Add("")
Tray.Add("Help", OpenHelp)
Tray.Add("Exit", CloseAHK)

;;-- MENU ITEMS CONFIGURATION -------------------------------------------------
;;
;; Each menu item's function is defined here.

ChangeStatus(*)
{
    ;; Create variables to store the menu item's name
    static OldName := "", NewName := ""

    ;; Use logic to toggle AutoHotkey between suspended and
    ;; active states when the user clicks on the menu item
    if (NewName != "Disabled") {
        ;; Switch AutoHotkey state to suspended
        ;; and update the tray icon
        Suspend 1
        UpdateIcon()

        ;; Update the variables' value
        OldName := "Active"
        NewName := "Disabled"
    } else {
        ;; Switch AutoHotkey state to active
        ;; and update the tray icon
        Suspend 0
        UpdateIcon()

        ;; Update the variables' value
        OldName := "Disabled"
        NewName := "Active"
    }
    ;; Update the menu item's name on user click
    Tray.Rename(OldName, NewName)
}

ReloadScripts(*)
{
    Reload
}

;; Debug Submenu
OpenHistory(*)
{
    KeyHistory
}

LineLogging(*)
{
    ;; Create a variable to store the function state
    ;; 0 = disabled, 1 = enabled
    static LogLines := 0

    ;; Use logic to toggle line logging when
    ;; the user clicks on the menu item
    if (LogLines != 1) {
        ;; Enable line logging and key history
        ListLines 1
        KeyHistory 100

        ;; Update the variable's value
        LogLines := 1
    } else {
        ;; Disable line logging and key history
        ListLines 0
        KeyHistory 0
        
        ;; Update the variable's value
        LogLines := 0
    }
    ;; Update the menu item's checkmark on user click
    DebugMenu.ToggleCheck("Line Logging")
}
;; End of Debug Submenu

OpenHelp(*)
{
    if (DirExist("C:\Users\" . A_Username . "\AppData\Local\Programs\AutoHotkey")) {
        Run 'hh.exe "C:\Users\' A_Username '\AppData\Local\Programs\AutoHotkey\v2\AutoHotkey.chm" href'
    } else {
        Run 'hh.exe "C:\Program Files\AutoHotkey\v2\AutoHotkey.chm" href'
    }
}

CloseAHK(*)
{
    ExitApp
}

;; Set activating/suspending AutoHotkey as the default option
;; when user double-clicks the tray icon
CurrentDefault := Tray.Default
Tray.Default := "Active"
