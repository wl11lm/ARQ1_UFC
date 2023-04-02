Questonário - CAPÍTULO 02
------
### QUESTÃO 01:

A - CORRETA


B - INCORRETA, POIS PARA USAR A QUEBRA DE LINHA, UTILIZAMOS O "0Ah"

        
C - INCORRETA, POIS O USO DA DIRETIVA "ADDR", NESSE CASO, ESTÁ IMPRIMINDO O ENDEREÇO DO NÚMERO AO INVÉS DO NÚMERO


D - CORRETA


E - INCORRETA, POIS EM ASSEMBLY UTILIZAMOS "0Ah" AO INVÉS DE "\N"


------
### QUESTÃO 02:

O CÓDIGO A SEGUIR UTILIZA O USO DA DIRETIVA INVOKE, PORÉM O USO DELA IMPLICA NA LIMPA DOS VALORES DOS REGISTRADORES EAX, ECX E EDX. NESSE CÓDIGO, ISSO IMPLICARIA EM UM ERRO DE LÓGICA.

        mov num1,5
        mov eax,num1
        mov num2,eax
        INVOKE printf, ADDR msg1fmt, ADDR msg1, num2


------
### QUESTÃO 03:

        x = 1 y = 2
        BLANK LINE
        BLANK LINE
        z=3
        

--------
### QUESTÃO 04:

        BLANK LINE
        The first number is 5, but the second number is 7,
        BLANK LINE
        while the third number is 11


--------
### QUESTÃO 05:
        

            .686
            .model flat, c
            .stack 100h
        printf PROTO arg1:Ptr Byte, printlist:VARARG
            .data
        msg1fmt byte 0Ah,"%d%s%d%s%d",0Ah,0Ah,0
        msg1 byte " + " , 0
        msg2 byte " = " , 0
        x sdword 1
        y sdword 2
        z sdword 3
            .code
        main proc
        INVOKE printf,ADDR msg1fmt, x, ADDR msg1, y , ADDR msg2, z
        ret
        main endp
        end


--------
### QUESTÃO 06:

            .686
            .model flat, c
            .stack 100h
        printf PROTO arg1:Ptr Byte, printlist:VARARG
        scanf PROTO arg2: Ptr Byte, inputlist:VARARG
            .data
        msg1fmt byte 0Ah,"%s",0
        msg2fmt byte 0Ah, "%s", 0Ah, 0Ah, 0
        msg3fmt byte " %d      %d", 0Ah, 0Ah, 0

        in1fmt byte "%d",0

        msg1 byte "Enter a value for num1: ",0
        msg2 byte "Enter a value for num2: ",0
        msg3 byte "num1    num2",0
        num1 sdword ?
        num2 sdword ?
            .code
        main proc
        INVOKE printf,ADDR msg1fmt, ADDR msg1
        INVOKE scanf,ADDR in1fmt, ADDR num1
        INVOKE printf,ADDR msg1fmt, ADDR msg2
        INVOKE scanf,ADDR in1fmt, ADDR num2
        INVOKE printf,ADDR msg2fmt, ADDR msg3
        INVOKE printf,ADDR msg3fmt, num1, num2


        ret
        main endp
        end        



---------
### QUESTÃO 07:


            .686
            .model  flat, c 
            .stack  100h
        printf  PROTO arg1:Ptr Byte, printlist:VARARG 
        scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
        infmt  byte    "%d", 0
        msg0fmt byte    "%s",0
        msg1fmt byte    0Ah, "%s",0


        msg2fmt byte    0Ah,"%d%s%d%s%d",0Ah,0

        msg0    byte    "Enter a number: ",0
        msg1    byte    "Enter a larger number: ",0
        msg2    byte    "Enter an even larger",0
        msg3    byte    "number: ", 0

        msg4    byte    " < ", 0
        msg5    byte    " > ", 0

        num1    sdword  ?   ; first number
        num2    sdword  ?   ; second number
        num3    sdword  ?   ; third number

            .code
        main    proc
                INVOKE printf, ADDR msg1fmt, ADDR msg0
                INVOKE scanf, ADDR infmt, ADDR num1

                INVOKE printf, ADDR msg0fmt, ADDR msg1
                INVOKE scanf, ADDR infmt, ADDR num2

                INVOKE printf, ADDR msg0fmt, ADDR msg2
                INVOKE printf, ADDR msg1fmt, ADDR msg3
                INVOKE scanf, ADDR infmt, ADDR num3

                INVOKE printf, ADDR msg2fmt, num1, ADDR msg4, num2, ADDR msg4, num3, ADDR msg4
                INVOKE printf, ADDR msg2fmt, num3, ADDR msg5, num2, ADDR msg5, num1, ADDR msg5

                ret 
        main    endp
        end


---------
### QUESTÃO 08:


        .686
        .model flat, c
        .stack 100h
    printf PROTO arg1:Ptr Byte, printlist:VARARG
    scanf PROTO arg2: Ptr Byte, inputlist:VARARG
        .data
    msg1fmt byte "%s",0
    msg2fmt byte 0Ah,"%s",0
    msg3fmt byte 0Ah,"    %d",0

    in1fmt byte "%d",0

    msg1 byte "Enter a number: ",0
    msg3 byte "Numbers",0

    num1 sdword ?
    num2 sdword ?
      .code
    main proc
    INVOKE printf,ADDR msg1fmt, ADDR msg1
    INVOKE scanf,ADDR in1fmt, ADDR num1
    INVOKE printf,ADDR msg1fmt, ADDR msg1
    INVOKE scanf,ADDR in1fmt, ADDR num2
    INVOKE printf,ADDR msg2fmt, ADDR msg3
    INVOKE printf,ADDR msg3fmt, num1
    INVOKE printf,ADDR msg3fmt, num2


    ret
    main endp
    end 
