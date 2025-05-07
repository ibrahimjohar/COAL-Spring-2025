include irvine32.inc

.data
    term1 DWORD 0
    term2 DWORD 1
    n DWORD 10
.code
main PROC
    mov eax, term1
    mov ebx, term2
    mov ecx, n
L1:
    call WriteDec
    call Crlf
    add eax, ebx
    xchg eax, ebx
    loop L1

    exit
main ENDP
END main

