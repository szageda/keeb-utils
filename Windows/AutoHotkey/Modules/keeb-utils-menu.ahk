/*
 * File        : keeb-utils-menu.ahk
 * Description : Minimalist AutoHotkey tray icon menu (Keeb Utils)
 * Copyright   : (c) 2024-2025, Gergely Szabo
 * License     : MIT
 *
 * Usage:
 * The script file must be loaded when AutoHotkey starts. The custom
 * menu is accessible by right clicking the tray icon.
 */

#Include keeb-utils-icon.ahk

;;;
;;; MENU ITEMS
;;;

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

;;;
;;; MENU ITEMS CONFIGURATION
;;;

ChangeStatus(*)
{
    static OldName := "", NewName := ""

    ;; Use logic to toggle AutoHotkey between suspended and
    ;; active states when the user clicks on the menu item.
    if NewName != "Disabled" {
        Suspend 1
        UpdateIcon()

        OldName := "Active"
        NewName := "Disabled"
    } else {
        Suspend 0
        UpdateIcon()

        OldName := "Disabled"
        NewName := "Active"
    }
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
    ;; Create a variable to store the function state:
    ;; 0 = disabled
    ;; 1 = enabled
    static LogLines := 0

    ;; Use logic to toggle line logging when
    ;; the user clicks on the menu item.
    if LogLines != 1 {
        ;; Enable line logging and key history.
        ListLines 1
        KeyHistory 100

        ;; Update the variable's value.
        LogLines := 1
    } else {
        ;; Disable line logging and key history.
        ListLines 0
        KeyHistory 0

        ;; Update the variable's value.
        LogLines := 0
    }
    ;; Update the menu item's check mark on user click.
    DebugMenu.ToggleCheck("Line Logging")
}
;; End of Debug Submenu

OpenHelp(*)
{
    if DirExist("C:\Users\" . A_Username . "\AppData\Local\Programs\AutoHotkey") {
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
;; when user double clicks the tray icon.
CurrentDefault := Tray.Default
Tray.Default := "Active"
