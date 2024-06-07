org 0000h
ljmp main

org 0013h
ljmp exti1

org 0050h
main:
; main function
mov a, #0ffh
setb it1
setb ex1
setb ea

loop:
mov p1, a
sjmp loop

; User defined functions
exti1:
dec a
reti

end
