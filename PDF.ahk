﻿#SingleInstance ignore
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetTimer process_watcher, 1000

process_watcher:
	Process Exist, FoxitReader.exe
	If ErrorLevel = 0 
	{
		Exitapp
	}
	else 
	{
		#IfWinActive ahk_exe FoxitReader.exe
		XButton2::PgUp
		XButton1::PgDn
	}
Return

