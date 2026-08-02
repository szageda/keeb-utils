/*
 * File        : mic-mute-toggle.ahk
 * Description : Microphone Device Mute Toggle for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * This function provides a toggle for the microphone mute state.
 *
 * The toggle targets the current default recording endpoint in Windows using
 * Core Audio COM interfaces. This avoids depending on endpoint names, which
 * can vary across drivers and devices.
 *
 * Documentation:
 * - AutoHotkey v2 ComCall:
 *      https://www.autohotkey.com/docs/v2/lib/ComCall.htm
 * 
 * - AutoHotkey v2 ComObject:
 *      https://www.autohotkey.com/docs/v2/lib/ComObject.htm
 */

/**
 * @brief   Toggles the mute state of the default capture (recording) endpoint.
 * @var {int} isMuted   Local receiver for resulting mute state (0 unmuted, 1 muted).
 * @example Shift & sc020::MicMuteToggle()
 */
MicMuteToggle() {
    if TryToggleDefaultCapture(&isMuted) {
        return
    }

    /**
     * @brief   Resolves the default capture endpoint for common roles and toggles its mute state.
     * @param {int} muteState   ByRef output. Receives resulting mute state (0 unmuted, 1 muted).
     * @var {ComObject} enumerator  IMMDeviceEnumerator COM instance.
     * @var {Buffer|false} iidBuffer  GUID buffer for IAudioEndpointVolume or false on failure.
     * @var {int} role  Endpoint role to probe (2 communications, 1 multimedia, 0 console).
     * @var {int} hr    HRESULT from COM calls (0 indicates success).
     * @returns {bool}  True when endpoint activation and mute toggle succeed, otherwise false.
     */
    TryToggleDefaultCapture(&muteState) {
        static CLSID_MMDeviceEnumerator := "{BCDE0395-E52F-467C-8E3D-C4579291692E}"
        static IID_IMMDeviceEnumerator := "{A95664D2-9614-4F35-A746-DE8DB63617E6}"
        static IID_IAudioEndpointVolume := "{5CDF2C82-841E-4546-9722-0CF74078229A}"
        static CLSCTX_ALL := 23
        static eCapture := 1

        try enumerator := ComObject(CLSID_MMDeviceEnumerator, IID_IMMDeviceEnumerator)
        catch {
            return false
        }

        iidBuffer := StringToGuidBuffer(IID_IAudioEndpointVolume)
        if (iidBuffer = false) {
            return false
        }

        ;; Prefer communications, then multimedia, then console role.
        for role in [2, 1, 0] {
            devicePtr := 0
            hr := ComCall(4, enumerator, "int", eCapture, "int", role, "ptr*", &devicePtr, "int")
            if (hr != 0 || !devicePtr) {
                continue
            }

            device := ComValue(13, devicePtr)
            endpointPtr := 0
            hr := ComCall(3, device, "ptr", iidBuffer.Ptr, "uint", CLSCTX_ALL, "ptr", 0, "ptr*", &endpointPtr, "int")
            if (hr != 0 || !endpointPtr) {
                continue
            }

            endpointVolume := ComValue(13, endpointPtr)
            if !ToggleEndpointMute(endpointVolume, &muteState) {
                continue
            }

            return true
        }

        return false
    }

     /**
     * @brief   Reads current endpoint mute state, flips it, writes it back, and verifies result.
     * @param {ComValue} endpointVolume `IAudioEndpointVolume` interface pointer wrapper.
     * @param {int} muteState   ByRef output. Receives resulting mute state (0 unmuted, 1 muted).
     * @var {int} current   Current mute state before toggle.
     * @var {int} next  Inverted mute state to apply.
     * @var {int} after Mute state after applying the toggle.
     * @var {int} hr    `HRESULT` from COM calls (0 indicates success).
     * @returns {bool}  True when all COM calls succeed, otherwise false.
     */
    ToggleEndpointMute(endpointVolume, &muteState) {
        current := 0
        hr := ComCall(15, endpointVolume, "int*", &current, "int")
        if (hr != 0) {
            return false
        }

        next := !current
        hr := ComCall(14, endpointVolume, "int", next, "ptr", 0, "int")
        if (hr != 0) {
            return false
        }

        after := 0
        hr := ComCall(15, endpointVolume, "int*", &after, "int")
        if (hr != 0) {
            return false
        }

        muteState := after
        return true
    }

    /**
     * @brief   Converts a GUID string to a 16-byte binary buffer for COM method calls.
     * @param {string} guidString   GUID in canonical form, e.g. `{xxxxxxxx-....}`.
     * @returns {Buffer|false}  16-byte GUID buffer, or false when parsing fails.
     */
    StringToGuidBuffer(guidString) {
        guid := Buffer(16, 0)
        if (DllCall("ole32\CLSIDFromString", "wstr", guidString, "ptr", guid.Ptr, "int") != 0) {
            return false
        }

        return guid
    }
}
