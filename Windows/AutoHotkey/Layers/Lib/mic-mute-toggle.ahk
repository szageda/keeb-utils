/*
 * File        : mic-mute-toggle.ahk
 * Description : Microphone Device Mute Toggle for Keeb Utils
 * Copyright   : (c) 2026, Gergely Szabo
 * License     : MIT
 *
 * Documentation:
 * - AutoHotkey v2 ComCall:
 *      https://www.autohotkey.com/docs/v2/lib/ComCall.htm
 * - AutoHotkey v2 ComObject:
 *      https://www.autohotkey.com/docs/v2/lib/ComObject.htm
 */

/**
 * Toggles the default capture device mute state.
 * This is intentionally resilient to Windows endpoint role differences, so the
 * hotkey still works even when the active microphone is not the default
 * communications device.
 *
 * @var {int} isMuted   Local receiver for resulting mute state (0 unmuted, 1 muted).
 * @example Shift & sc020::MicMuteToggle()
 */
MicMuteToggle()
{
    if TryToggleDefaultCapture(&isMuted) {
        return
    }

    /**
     * Finds the first usable default capture endpoint and flips its mute bit.
     * Communications devices are checked first because they are the most common
     * place Windows exposes a mic used for calls or voice input.
     *
     * @param {int} muteState   ByRef output. Receives resulting mute state (0 unmuted, 1 muted).
     * @var {ComObject} enumerator  `IMMDeviceEnumerator` COM instance.
     * @var {Buffer|false} iidBuffer  GUID buffer for `IAudioEndpointVolume` or false on failure.
     * @var {int} role  Endpoint role to probe (2 communications, 1 multimedia, 0 console).
     * @var {int} hr    HRESULT from COM calls (0 indicates success).
     * @returns {bool}  True when endpoint activation and mute toggle succeed, otherwise false.
     */
    TryToggleDefaultCapture(&muteState)
    {
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

        ;; Prefer communications, then multimedia, then console role; this keeps the
        ;; hotkey working on systems where the active mic is not the default endpoint.
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
     * Reads the current endpoint state, inverts it, and verifies the result.
     * The extra read-back protects against stale state or a silent COM failure.
     *
     * @param {ComValue} endpointVolume `IAudioEndpointVolume` interface pointer wrapper.
     * @param {int} muteState   ByRef output. Receives resulting mute state (0 unmuted, 1 muted).
     * @var {int} current   Current mute state before toggle.
     * @var {int} next  Inverted mute state to apply.
     * @var {int} after   Mute state after applying the toggle.
     * @var {int} hr    `HRESULT` from COM calls (0 indicates success).
     * @returns {bool}  True when all COM calls succeed, otherwise false.
     */
    ToggleEndpointMute(endpointVolume, &muteState)
    {
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
     * Converts the COM interface GUID to the binary blob required by AutoHotkey's
     * ComCall API.
     *
     * @param {string} guidString   GUID in canonical form, e.g. `{xxxxxxxx-....}`.
     * @returns {Buffer|false}  16-byte GUID buffer, or false when parsing fails.
     */
    StringToGuidBuffer(guidString)
    {
        guid := Buffer(16, 0)
        if (DllCall("ole32\CLSIDFromString", "wstr", guidString, "ptr", guid.Ptr, "int") != 0) {
            return false
        }

        return guid
    }
}
