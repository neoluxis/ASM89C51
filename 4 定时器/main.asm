org 0000h
ljmp main

org 000bh
ljmp t0_isr

org 0500h
main:
; main function
mov p1, #07fh
mov r0, #2
mov tmod, #01h
mov th0, #3ch
mov tl0, #0afh
setb tr0
setb et0
setb ea

sjmp $

; User defined functions
t0_isr:
mov th0, #3ch
mov tl0, #0afh
djnz r0, flow
reti

flow:
mov a, p1
rr a
mov p1, a
mov r0, #2
reti

end
