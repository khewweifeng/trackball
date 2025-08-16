#SingleInstance, force





!s::Send {WheelUp 1}    ; Alt + S scrolls up
!d::Send {WheelDown 1}  ; Alt + D scrolls down


:*:code  ::+;*+;+;+; {home} {right 5}{space 2}
^`::suspend
^escape::exitapp
^8::Reload  ; Assign Ctrl+8 as a hotkey to restart the script.
