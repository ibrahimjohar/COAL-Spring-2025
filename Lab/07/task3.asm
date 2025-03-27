include irvine32.inc
.data
    array1 DWORD 1, 2, 3, 4, 5
    array2 DWORD 6, 7, 8, 9, 10
    sum1 DWORD ?
    sum2 DWORD ?
    total DWORD ?
    totalMsg BYTE "total sum of both arrays is: ", 0
.code
main PROC
    call SumArray1
    call SumArray2
    call SumBoth

    ;result
    mov eax, total
    call WriteString
    mov edx, OFFSET totalMsg
    call WriteString
    mov eax, total
    call WriteDec
    call Crlf

    exit
main ENDP

; ------------------------------------------

SumArray1 PROC
    mov ecx, 5
    mov esi, OFFSET array1
    xor eax, eax     ;clearing eax to accumulate sum
L1:
    add eax, [esi]
    add esi, 4
    loop L1
    mov sum1, eax
    ret
SumArray1 ENDP

; ------------------------------------------


SumArray2 PROC
    mov ecx, 5
    mov esi, OFFSET array2
    xor eax, eax
L2:
    add eax, [esi]
    add esi, 4
    loop L2
    mov sum2, eax
    ret
SumArray2 ENDP

; ------------------------------------------


SumBoth PROC
    mov eax, sum1
    add eax, sum2
    mov total, eax
    ret
SumBoth ENDP

END main
