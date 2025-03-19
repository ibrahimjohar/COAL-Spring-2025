;LAB 5 TASK 5

;Initialize two arrays
;Copy elements of array1 into array2 in reverse order using either indirect addressing or direct-offset
;addressing. Use ESI and EDI Registers. (Hint: INC and DEC of OFFSET).

include irvine32.inc
.data
    array1 BYTE 10,20,30,40
    array2 BYTE 4 DUP (?)
.code
main PROC
    mov esi, OFFSET array1
    mov edi, OFFSET array2 + 3

    mov al, [esi]
    mov [edi], al
    dec edi
    inc esi

    mov al, [esi]
    mov [edi], al
    dec edi
    inc esi

    mov al, [esi]
    mov [edi], al
    dec edi
    inc esi

    mov al, [esi]
    mov [edi], al

    exit
main ENDP
END main


; OUTPUT
