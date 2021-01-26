#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ^#j::
; Send #^{Right}
; return

; ^#k::
; Send #^{Left}
; return

#+Right::
WinGet, active_id, ID, A
WinHide, ahk_id %active_id%
Send #^{Right}
WinShow, ahk_id %active_id%
return

#+Left::
WinGet, active_id, ID, A
WinHide, ahk_id %active_id%
Send #^{Left}
WinShow, ahk_id %active_id%
return
