    .686
    .model flat, c
    .stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
    .data
msg1fmt byte 0Ah,"%d",0
msg1 byte "funfou",0
j sdword ?
    .code
main proc

            mov j,1
while06:    cmp j,0
            jg endwhile06
            INVOKE printf, ADDR msg1fmt, j
            inc j
            jmp while06
endwhile06: nop 

            INVOKE printf, ADDR msg1fmt, j


main endp
end
