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
    mov esi, OFFSET array1          ;start at the 1st element of array1
    mov edi, OFFSET array2 + (LENGTHOF array1) - 1      ;start at the last element of array2
    mov ecx, LENGTHOF array1

;reverse loop
L1:
    mov al, [esi]           ;load value from array1
    mov [edi], al           ;store in array2 at reverse index
    inc esi                 ;move forward in source array
    dec edi                 ;move backward in destination array
    loop L1


    ;displaying the reversed array
    mov esi, OFFSET array2          ;point esi to start of reversed array
    mov ecx, LENGTHOF array2        ;loop counter

L2:
    movzx eax, BYTE PTR [esi]       ;load value into eax - indirect addressing
    call WriteDec
    call crlf
    inc esi
    loop L2

    exit
main ENDP
END main


; OUTPUT
;40
;30
;20
;10



;for direct addressing - printing loop

;    mov esi, 0
;    mov ecx, LENGTHOF array2

;L2:
;    movzx eax, array2[esi]
;    call WriteDec
;    call crlf
;    inc esi
;    loop L2
