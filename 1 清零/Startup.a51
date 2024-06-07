org 0000h
ljmp main

org 3000h
main: 
mov r0, #00h
mov dptr, #2000h
	  
send: 
mov a, #0ABh
movx @dptr, a
inc dptr 
inc r0
mov a, r0
jnz send
ender: sjmp ender
end
