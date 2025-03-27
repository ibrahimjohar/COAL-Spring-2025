include irvine32.inc
.data
    arr1 WORD 1, 2, 3, 4, 5
    arr2 WORD 6, 7, 8, 9, 10
    sum1 DWORD ?
    sum2 DWORD ?
    total DWORD ?
.code
sumArray1 PROC
    lea esi, arr1
    mov ecx, 5
    xor eax, eax

L1:
    add ax, [esi]
    add esi, 2
    loop L1

    movzx eax, ax
    mov sum1, eax
    ret
sumArray1 ENDP

sumArray2 PROC
    lea esi, arr2
    mov ecx, 5
    xor eax, eax

L2:
    add ax, [esi]
    add esi, 2
    loop L2

    movzx eax, ax
    mov sum2, eax
    ret
sumArray2 ENDP

addBoth PROC
    mov eax, sum1
    add eax, sum2
    mov total, eax
    ret
addBoth ENDP

main PROC
    call sumArray1
    call sumArray2
    call addBoth

    ;total display
    mov eax, total
    call WriteDec
    call Crlf

    exit
main ENDP
END main
