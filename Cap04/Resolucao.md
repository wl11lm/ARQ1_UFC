## QUESTIONÁRIO 04

### QUESTÃO 01

        A) INCORRETA, POIS HÁ A AUSENCIA DE MAIS UM '=' NA COMPARAÇÃO.

        B) INCORRETA, NÃO HÁ O "then" APÓS A CONDIÇÃO.

        C) INCORRETO, x-1

        D) INCORRETO, HÁ DOIS ACESSOS SIMULTÂNEOS NA MEMÓRIA.

-----
### QUESTÃO 02

```asm
    mov eax, a
    .if eax > b
        dec eax
        mov a, eax
    .else
        mov eax, b
        .if eax >= c_
            sub eax, 2
            mov b, eax
        .else
            mov eax, c_
            .if eax > d
                add eax, d
                mov c_, eax
            .else 
                mov ebx, 2
                mov eax, d
                cdq
                idiv ebx
                mov d, eax
            .endif
        .endif
    .endif

```
-----
### QUESTÃO 03
A)
```asm
if01:       cmp w,1
            jne endif01
            cmp x,2
            jne endif01
then01:     dec y
endif01:    nop
```

B)
```asm
if01:       cmp num, 0
            jle then01
            cmp num, 3
            jle endif01
then01:     mov eax, count 
            sub eax, 2
            mov count, eax
endif01:    nop     
```

C)
```asm
if01:       cmp w,1
            je and02
            cmp x,2
            jne endif01
and02:      cmp y,3 
            jne endif01
then01:     inc z
endif01:    nop
```

D)
```asm
if01:       cmp b, 2
            jne or02
            cmp c_, 3
            jg then01
or02:       cmp a, 1
            je then01
or03:       cmp d, 4
            jg endif01
then01:     dec e
endif01:    nop
```
-----
### QUESTAO 4 ??

----

### QUESTÃO 05

```asm
mov eax, number
switch01:   cmp eax, 0
            je case0_1
            cmp eax, 1
            je case0_1
            cmp eax, 2
            je case2_3
            cmp eax, 3
            je case2_3
            jmp endswitch01

case0_1:    mov eax, count              ; add count, 2 seria mais eficiente por conter menos acesso a memoria
            add eax, 2
            mov count, eax
            jmp endswitch01

case2_3:    mov eax, count              ; sub count, 2 seria mais eficiente por conter menos acesso a memoria
            sub eax, 2
            mov count, eax

endswitch01: nop
```

-----

### QUESTÃO 06 EM ARQUIVO
