include irvine32.inc
.data
    source DWORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    destination DWORD 10 DUP(0)
    index DWORD 0
.code
main PROC
    ;push all source elements to stack
    mov ecx, 10
    mov esi, OFFSET source
L1:
    mov eax, [esi]
    push eax
    add esi, 4
    loop L1

    ;pop them into destination array
    mov ecx, 10
    mov edi, OFFSET destination
L2:
    pop eax
    mov [edi], eax
    add edi, 4
    loop L2

    ;display destination array
    mov ecx, 10
    mov esi, OFFSET destination
L3:
    mov eax, [esi]
    call WriteDec
    call Crlf
    add esi, 4
    loop L3

    exit
main ENDP
END main
