org 0000h
ljmp main

org 0500h
main:
mov dptr,#2000h
mov a, #0abh
movx @dptr,a
;------
movx a, @dptr
mov r0, #0fh
swap a
anl a,r0
mov dptr, #2001h
movx @dptr,a
mov dptr, #2000h
movx a,@dptr
mov dptr, #2002h
anl a,r0
movx @dptr,a
ender: sjmp ender
end
