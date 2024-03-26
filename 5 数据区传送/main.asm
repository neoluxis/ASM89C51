org 0000h
ljmp main

org 0500h
main:
; main loop
; Init params
mov r2, #20h
mov r3, #00h
mov r4, #30h
mov r5, #00h
mov r7, #20h
lcall init

loop:
mov dph, r2
mov dpl, r3
movx a, @dptr
mov dph, r4
mov dpl, r5
movx @dptr, a
inc r3
inc r5
djnz r7, loop

sjmp $

; User defined functions
init: ; Init original data from 2000H
mov a, #01h
mov dptr, #2000h
init_loop:
movx @dptr, a
inc a
inc dptr
cjne a, #30h, init_loop
ret

end
