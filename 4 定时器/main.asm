org 0000h
ljmp main

org 000bh
ljmp t0_isr

org 0500h
main:
; main function
	mov a, #07fh
	mov p1, a
	mov r0, #20
	mov tmod, #01h
	mov th0, #3ch
	mov tl0, #0afh
	setb tr0
	setb et0
	setb ea
while:
	cjne r0, #0, while
	lcall flow
sjmp while

; User defined functions
t0_isr:
	mov th0, #3ch
	mov tl0, #0afh
	dec r0
	reti

flow:
	mov r0, #20
	rr a
	mov p1, a
	ret
end
