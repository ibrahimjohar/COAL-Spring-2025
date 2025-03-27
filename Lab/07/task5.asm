include irvine32.inc
.data
    n DWORD ?
    sum DWORD ?
.code
sumToN PROC
    mov ecx, n
    xor eax, eax

loop1:
    add eax, ecx
    loop loop1

    mov sum, eax
    ret
sumToN ENDP

main PROC
    ;take input n
    mov edx, OFFSET n
    call ReadInt
    mov n, eax

    call sumToN

    ;result
    mov eax, sum
    call WriteDec
    call Crlf

    exit
main ENDP
END main
