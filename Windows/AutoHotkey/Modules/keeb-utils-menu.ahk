/*
 * File        : keeb-utils-menu.ahk
 * Description : Minimalist AutoHotkey tray icon menu for Keeb Utils
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * This file configures a custom menu for the AutoHotkey tray icon (activated
 * by right clicking) for the Keeb Utils projects.
 */

;; Add the menu items
Tray := A_TrayMenu                  ; for convenience
Tray.Delete()                       ; delete the standard menu times
Tray.Add("Active", ChangeStatus)
Tray.Add("")                        ; separator
Tray.Add("Key History", OpenHistory)
Tray.Add("Reload", ReloadScripts)
Tray.Add("")
Tray.Add("Help", OpenHelp)
Tray.Add("Exit", CloseAHK)

;; Configure the menu items
ChangeStatus(*)
{
    static OldName := "", NewName := ""
    if NewName != "Disabled" {
        Suspend 1
        OldName := "Active"
        NewName := "Disabled"

        ;; Update the tray icon and tip
        A_IconTip := "Keeb Utils is disabled"
        TraySetIcon("Icons\suspended.ico",, true)
    } else {
        Suspend 0
        OldName := "Disabled"
        NewName := "Active"

        ;; Update the tray icon and tip
        A_IconTip := "Keeb Utils is active"
        TraySetIcon("Icons\active.ico",, false)
    }
    Tray.Rename(OldName, NewName)
}

OpenHistory(*)
{
    KeyHistory
}

ReloadScripts(*)
{
    Reload
}

OpenHelp(*)
{
    if DirExist("C:\Users\" . A_Username  . "\AppData\Local\Programs\AutoHotkey") {
        Run 'hh.exe "C:\Users\' A_Username '\AppData\Local\Programs\AutoHotkey\v2\AutoHotkey.chm" href'
    } else {
        Run 'hh.exe "C:\Program Files\AutoHotkey\v2\AutoHotkey.chm" href'
    }
}

CloseAHK(*)
{
    ExitApp
}

;; Set Activating/Disabling Keeb Utils as the default
CurrentDefault := Tray.Default
Tray.Default := "Active"
