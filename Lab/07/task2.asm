include irvine32.inc
.data
    num1 WORD 15
    num2 WORD 25
    num3 WORD 35
    result DWORD ?
.code
main PROC
    ;push nums on stack
    mov ax, num1
    push ax
    mov ax, num2
    push ax
    mov ax, num3
    push ax

    ;pop and add
    pop ax
    mov bx, ax
    pop ax
    add bx, ax
    pop ax
    add bx, ax

    movzx eax, bx
    mov result, eax

    ;display result
    mov eax, result
    call WriteDec
    call Crlf

    exit
main ENDP
END main
