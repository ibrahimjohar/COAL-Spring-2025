include irvine32.inc
.data
    str_before BYTE "before AX: ", 0
    str_after BYTE "after BX: ", 0
.code
main PROC
    mov ax, 1010101010101011b
    mov bx, 1010101010101010b
    mov edx, offset str_before
    call writestring
    movzx eax, ax
    call writebin
    call crlf
    mov cx, ax
    shrd bx, cx, 1
    mov edx, offset str_after
    call writestring
    movzx eax, bx
    call writebin
    call crlf
    exit
main ENDP
END main
