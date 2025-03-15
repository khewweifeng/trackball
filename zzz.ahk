﻿#SingleInstance, force

; Press 4 to start/stop the left click toggle action
4::
    Toggle := !Toggle
    if (Toggle) {
        SetTimer, ClickMouse, 25
    } else {
        SetTimer, ClickMouse, Off
    }
return

ClickMouse:
    Click
return


; Press F4 to execute the left click action 4 times - soldier 11
F4::
    Loop, 8
    {
        Sleep, 25  ; 0.025 seconds
        Click
        Sleep, 300  ; 0.3 seconds
    }
return


; Press F5 to execute the left click action - charged attack 
F5::
    Loop, 8
    {
        Sleep, 25  ; 0.025 seconds
        Click, down
        Sleep, 300  ; 0.3 seconds
	click, up
    }
return


; Press F6 to execute the left click action - charged attack corin
F6::
    Loop, 12
    {
        Sleep, 25  ; 0.025 seconds
        Click, down
        Sleep, 300  ; 0.3 seconds
	click, up
    }
return



; Press F9 to execute holding E key - corin
F9::
    Send, {e Down} 
	Sleep, 2000 ; Adjust the sleep time as needed for the charge duration for 2 sec.
	Send, {e Up}
return


!d::WheelDown ; alt d - scrollwheel down
return

!s::wheelup ; alt s - scrollwheel up
return


:*:code  ::+;*+;+;+; {home} {right 5}{space 2}
^`::suspend
^escape::exitapp
^8::Reload  ; Assign Ctrl+8 as a hotkey to restart the script.
