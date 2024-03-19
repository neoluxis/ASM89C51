org 0000h
ljmp main

org 0500h
main:
mov a,#0feh
mov p1,a
loop:
lcall delay
rl a
mov p1,a
sjmp loop

sjmp $
	
delay:
mov r6, #255
delay1: 
mov r7, #255
delay2: 
djnz r7, delay2
djnz r6, delay1
ret

end
