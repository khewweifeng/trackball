#SingleInstance, force
toggle := false   ; variable to track toggle state


!4::
toggle := !toggle
while (toggle){
    Send, {Space down}
    Sleep, 2000   ; wait 2000 ms (2 seconds)
    ; Release the Space bar
    Send, {Space up}
    Sleep, 100    ; short pause before tapping again
    ; Tap the Space bar once
    Send, {Space}
    sleep, 5000
	send, q
	sleep, 1000
    send, 4
	sleep, 5000
}
return


!1::
    ; Hold down the Space bar
    Send, {Space down}
    Sleep, 2000   ; wait 2000 ms (2 seconds)
    ; Release the Space bar
    Send, {Space up}
    Sleep, 100    ; short pause before tapping again
    ; Tap the Space bar once
    Send, {Space}
    

return


!2::
SendMode Input
toggle := !toggle   ; flip toggle state each time is pressed
    while (toggle) {
    
    Send, {Space down}
    Sleep, 2000   ; wait 2000 ms (2 seconds)
    Send, {Space up}
    Sleep, 100    ; short pause before tapping again
    Send, {Space}
    sleep, 6000	
	
	send, {s down}
	sleep, 300

	send, {space}
	send, {s up}
	sleep, 2000

	send, q
	sleep, 2000
	
	send, q
	sleep, 300

	send, {w down}
	sleep, 500
	send, {w up}	

	send, f
	sleep, 4000

	
	send, f
	sleep, 2000
	send, {w down}
	sleep, 1000
	send, {w up}
	sleep, 2000
	send, f
	sleep, 1000
	}	
return



F9::
    Send, {s down}   ; hold down "s"
    Sleep, 500      ; wait 1000 ms (1 second)
    Send, {s up}     ; release "s"
	
send, {d down}
	sleep, 500
	send, {d up}
	
send, {w down}
	sleep, 800
	send, {w up}
	send, f
	
send, {a down}
	sleep, 800
	send, {a up}
	send, f	

return



!s::Send {WheelUp 1}    ; Alt + S scrolls up
!d::Send {WheelDown 1}  ; Alt + D scrolls down


:*:code  ::+;*+;+;+; {home} {right 5}{space 2}
^`::suspend
^escape::exitapp
^8::Reload  ; Assign Ctrl+8 as a hotkey to restart the script.
