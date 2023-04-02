QUESTIONÁRIO 03

QUESTÃO 01:

        A - INCORRETA, POIS O COMANDO "INC" É UNÁRIO, OU SEJA, SÓ NECESSITA DE UMA VARÍAVEL PARA  INCREMENTAR
        B - CORRETA
        C - INCORRETA, POIS ESTÁ ACESSANDO DOIS LOCAIS DE MEMÓRIA AO MESMO TEMPO
        D - INCORRETA, POIS O COMANDO "IDIV" NECESSITA QUE O DIVISOR ESTEJA EM UM REGISTRADOR OU LOCAL DA MEMÓRIA
        E - INCORRETA, POIS É IMPOSSÍVEL SUBTRAIR DE UM VALOR IMEDIATO
        F - CORRETA

 QUESTÃO 02:       

A:

        mov eax,3
        imul number
        mov product,eax
B:

        mov eax,number
        cdq
        idiv amount
        mov result,edx

C:

        mov eax,number
        mov ebx,2
        cdq 
        idiv ebx
        mov answer,eax

D:

        mov eax,4
        sub eax,number
        mov difference,eax

QUESTÃO 03:

A:      
        mov eax, x
        imul y
        mov ecx,eax
        mov eax,z
        mov ebx,2
        imul ebx
        add ecx,eax
        mov x,ecx

B:

        mov eax,c
        mov ebx,3
        cdq
        idiv ebx
        mov ebx,b
        sub ebx,eax
        mov a,ebx

C:

        mov eax,num3
        imul num4
        mov ebx,eax
        mov eax,num1
        cdq
        idiv num2
        sub eax,ebx
        mov total,eax

D:

        mov ebx,s
        neg ebx
        mov eax, ebx
        add eax, t
        mov r, eax
        inc t

E:

        mov eax,i
        sub eax, j
        imul k
        imul n
        mov m,eax

F:

        mov eax,c
        cdq
        idiv d
        imul e
        sub eax,b
        add eax,a
        mov q,eax

QUESTÃO 04:

A:

        dec i

B:

        inc k
        mov eax,k
        sub eax, m
        mov j,eax

C:

        mov eax,x
        add eax,y
        neg eax
        mov z,eax

D:

        inc b
        mov eax,b
        sub eax,c
        inc c
        mov a,eax

E:

        mov eax,y
        neg eax
        add eax,z
        dec z
        mov x,eax

QUESTÃO 05:

            .686
            .model flat, c
            .stack 100h
    printf PROTO arg1:Ptr Byte, printlist:VARARG
    scanf PROTO arg2: Ptr Byte, inputlist:VARARG
            .data
        msg1fmt byte 0Ah, "%s",0
        msg2fmt byte 0Ah, "%s%d" ,0Ah,0Ah,0
        msg1 byte "Enter a integer: ",0
        msg2 byte "The integer is: ",0
        number sdword ?
        in1fmt byte "%d",0
            .code
    main proc
        INVOKE printf,ADDR msg1fmt,ADDR msg1
        INVOKE scanf,ADDR in1fmt,ADDR number
        mov eax,number
        mov ebx,3
        imul ebx
        mov ebx,7
        sub ebx,eax
        mov number,ebx
        INVOKE printf, ADDR msg2fmt,ADDR msg2,number
    ret
    main endp

QUESTÃO 06:

            .686
            .model flat, c
            .stack 100h
            printf PROTO arg1:Ptr Byte, printlist:VARARG
            scanf PROTO arg2: Ptr Byte, inputlist:VARARG
            .data
        msg1fmt byte "%s",0
        msg2fmt byte 0Ah,"%s%d",0
        msg1 byte "Enter the number of amperes: ",0
        msg2 byte "Enter the number of ohms: ",0
        msg3 byte "The number of volts is: " ,0
        msg4 byte "the number of watts is: " ,0
        number sdword ?
        number2 sdword ?
        in1fmt byte "%d",0
            .code
        main proc
        INVOKE printf,ADDR msg1fmt,ADDR msg1
        INVOKE scanf,ADDR in1fmt,ADDR number
        INVOKE printf, ADDR msg1fmt,ADDR msg2
        INVOKE scanf, ADDR in1fmt,ADDR number2
        mov eax,number
        imul number2
        mov ebx,eax
        INVOKE printf,ADDR msg2fmt,ADDR msg3,ebx
        mov eax,number
        imul ebx
        mov ebx,eax
        INVOKE printf,ADDR msg2fmt,ADDR msg4,ebx
        ret
        main endp 
        end

QUESTÃO 07:

            .686
            .model flat, c
            .stack 100h
        printf PROTO arg1:Ptr Byte, printlist:VARARG
        scanf PROTO arg2: Ptr Byte, inputlist:VARARG
            .data
        msg1fmt byte 0Ah,"%s",0
        msg2fmt byte 0Ah,"%s%d", 0Ah, 0Ah,0
        msg1 byte "Enter the degrees in Fahrenheit: ",0
        msg2 byte "The degrees in Celsius is: ",0
        in1fmt byte "%d",0
        num sdword ?
            .code
        main proc
        INVOKE printf,ADDR msg1fmt, ADDR msg1
        INVOKE scanf,ADDR in1fmt, ADDR num
        mov eax, num
        sub eax, 32
        cdq
        mov ebx, 9
        idiv ebx
        mov ebx, 5
        imul ebx
        mov num, eax
        INVOKE printf,ADDR msg2fmt, ADDR msg2, num
        ret
        main endp
        end




       




