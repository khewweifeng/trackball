#SingleInstance, force

; Press F4 to execute the left click action 4 times - soldier 11
F4::
    Loop, 8
    {
        Sleep, 25  ; 0.025 seconds
        Click
        Sleep, 300  ; 0.3 seconds
    }
return


:*:code  ::+;*+;+;+; {home} {right 5}{space 2}
^`::suspend
^escape::exitapp
^8::Reload  ; Assign Ctrl+8 as a hotkey to restart the script.
