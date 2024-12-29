/*
 * File        : keeb-utils-menu.ahk
 * Description : Minimalist AutoHotkey tray icon menu for Keeb Utils
 * Copyright   : (c) 2024, Gergely Szabo
 * License     : MIT
 *
 * This file configures a custom menu for AutoHotkey.
 *
 * Usage:
 *  The script file must be loaded when AutoHotkey starts. The custom
 *  menu is accessible by right clicking the tray icon.
 */

;; -- MENU ITEMS --------------------------------------------------------------
;;
;; This section contains the menu items visible to the user.

Tray := A_TrayMenu                  ;; for convenience
Tray.Delete()                       ;; delete the standard menu times
Tray.Add("Active", ChangeStatus)
Tray.Add("")                        ;; separator
Tray.Add("Key History", OpenHistory)
Tray.Add("Reload", ReloadScripts)
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

    ;; Use logic to toggle between suspended and active states
    ;; when the user clicks on the menu item.
    if NewName != "Disabled" {
        ;; Suspend AutoHotkey
        Suspend 1

        ;; Update the menu item's name
        OldName := "Active"
        NewName := "Disabled"

        ;; Update the tray icon and tip
        A_IconTip := "Keeb Utils is disabled"
        TraySetIcon("Icons\suspended.ico",, true)
    } else {
        ;; Activate AutoHotkey
        Suspend 0

        ;; Update the menu item's name
        OldName := "Disabled"
        NewName := "Active"

        ;; Update the tray icon and tip
        A_IconTip := "Keeb Utils is active"
        TraySetIcon("Icons\active.ico",, false)
    }
    ;; Toggle between the AutoHotkey states
    ;; when the user clics the menu item
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

;; Set Activating/Disabling Keeb Utils as the default
;; option when double clicking the tray icon.
CurrentDefault := Tray.Default
Tray.Default := "Active"
