/*
 * File        : keeb-utils-menu.ahk
 * Description : Minimalist AutoHotkey tray icon menu (Keeb Utils)
 * Copyright   : (c) 2024-2026, Gergely Szabo
 * License     : MIT
 *
 * This script creates a minimalist tray icon menu for AutoHotkey with custom
 * options.
 */

#Include keeb-utils-icon.ahk

;; Menu Options
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

ChangeStatus(*)
{
    static oldName := "", newName := ""

    ;; Switch between AutoHotkey states on item clicks.
    if newName != "Disabled" {
        Suspend 1
        UpdateIcon()

        oldName := "Active"
        newName := "Disabled"
    } else {
        Suspend 0
        UpdateIcon()

        oldName := "Disabled"
        newName := "Active"
    }
    Tray.Rename(oldName, newName)
}

ReloadScripts(*)
{
    Reload
}

OpenHistory(*)
{
    KeyHistory
}

LineLogging(*)
{
    static logLines := 0

    if logLines != 1 {
        ListLines 1
        KeyHistory 100

        logLines := 1
    } else {
        ListLines 0
        KeyHistory 0

        logLines := 0
    }
    DebugMenu.ToggleCheck("Line Logging")
}

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
