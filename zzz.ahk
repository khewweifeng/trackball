#SingleInstance, force

; Press  to start/stop the left click toggle action
;4::
   ; Toggle := !Toggle
    if (Toggle) {
        SetTimer, ClickMouse, 25
    } else {
        SetTimer, ClickMouse, Off
    }
return

ClickMouse:
    Click
return


; Press  to execute the left click action 4 times - soldier 11
5::
    Loop, 8
    {
        Sleep, 25  ; 0.025 seconds
        Click
        Sleep, 300  ; 0.3 seconds
    }
return


; Press  to execute the left click action - charged attack 
6::
    Loop, 8
    {
        Sleep, 25  ; 0.025 seconds
        Click, down
        Sleep, 300  ; 0.3 seconds
	click, up
    }
return


; Press  to execute the left click action - charged attack corin
8::
    Loop, 12
    {
        Sleep, 25  ; 0.025 seconds
        Click, down
        Sleep, 300  ; 0.3 seconds
	click, up
    }
return



; Press  to execute holding E key - corin
9::
    Send, {e Down} 
	Sleep, 2000 ; Adjust the sleep time as needed for the charge duration for 2 sec.
	Send, {e Up}
return


!s::Send {WheelUp 1}    ; Alt + S scrolls up
!d::Send {WheelDown 1}  ; Alt + D scrolls down


:*:code  ::+;*+;+;+; {home} {right 5}{space 2}
^`::suspend
^escape::exitapp
^8::Reload  ; Assign Ctrl+8 as a hotkey to restart the script.
