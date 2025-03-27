include irvine32.inc
.data
    source WORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    destination WORD 10 DUP(0)
.code
main PROC
    lea esi, source
    lea edi, destination
    mov ecx, 10

copy_loop:
    push WORD PTR [esi]
    add esi, 2
    pop WORD PTR [edi]
    add edi, 2
    loop copy_loop

    ;display
    lea edi, destination
    mov ecx, 10

print_loop:
    movzx eax, WORD PTR [edi]
    call WriteDec
    call Crlf
    add edi, 2
    loop print_loop

    exit
main ENDP
END main
