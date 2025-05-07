include irvine32.inc

.data
    rows DWORD 4
    cols DWORD 1
    num DWORD 1
.code
main PROC
    mov eax, num
    mov ecx, rows

outerLoop:
    mov edx, ecx

innerLoop:
    call WriteDec
    inc cols

    loop innerLoop

    call Crlf

    mov ecx, edx

    loop outerLoop

    exit
main ENDP
END main

