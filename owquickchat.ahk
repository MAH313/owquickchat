
; Made by MAH313
; version 1.0

;General settings (advise: do not touch)
#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

;A pop-up Message Box notifying the user that the script has started.
MsgBox,,,Your script has started: `n%A_ScriptDir%,3



; --------------
; In-Game Keys & Actions
; --------------

#IfWinActive ahk_exe overwatch.exe	;Enables the encased hotkeys only when Overwatch is the active window.

;numpad 7 = [match] GG
$Numpad7::matchChat("GG")

;numpad 8 = [team] I need help 
$Numpad8::teamChat("I need help")

;numpad 9 = [team] Can someone take out the snipers 
$Numpad9::teamChat("Can someone take out the snipers ")

;numpad 4 = [team] My barrier is at 50%
$Numpad4::teamChat("My barrier is at 50%")

;numpad 5 = [team] My barrier is at 25%
$Numpad5::teamChat("My barrier is at 25%")

#IfWinActive				;Closes code encasing.



; -----------------------------------------------------
;Functions, Do not alter if you dont know what it does!
; -----------------------------------------------------

teamChat(text){
	SendInput, {NumpadMult} ;Open the match chat
	Sleep, 100
	
	SendInput, {tab} ;Select the team chat
  ;If ScrollLock is on press tab again (for grouped players)
	If GetKeyState("ScrollLock", "T"){
	 	SendInput, {tab}
	}
	Sleep, 10	
	
	Loop, parse, Text, ;parse all chars in string 1 by 1
	{
    SendInput, %A_LoopField%
		sleep, 1
	}

	Sleep, 10
	SendInput, {enter} ;press enter 
}

matchChat(text){
	SendInput, {NumpadMult} ;Open the match chat
	Sleep, 100
	
	Loop, parse, Text, ;parse all chars in string 1 by 1
	{
    SendInput, %A_LoopField%
		sleep, 1
	}

	Sleep, 10
	SendInput, {enter} ;press enter 
}



;-----------------------------
;	Script Hotkeys
;-----------------------------
$<#F1:: ;Refresh Script Hotkey
	Reload
	Return
$<#F3::	;Suspend Script Hotkey
	Suspend, permit
	Gosub SuspendScript
	Return
$<#F4::	;Kill Script Hotkey
	MsgBox,,%A_ScriptName% Terminated,%A_ScriptName% has been Terminated.,5
	ExitApp



;----------------------------------
;	Labels & Subroutines
;----------------------------------
SuspendScript:
	Suspend, Toggle
	If %A_IsSuspended%
	{
		MsgBox,,%A_ScriptName% Suspended,%A_ScriptName% has been suspended.
	}
	Else
	{
		MsgBox,,%A_ScriptName% Suspended,%A_ScriptName% is no longer suspended.
	}
	Return
