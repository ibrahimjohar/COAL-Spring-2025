include irvine32.inc
.data
    prompt BYTE "enter a number: ", 0
    resultMsg BYTE "square is: ", 0
.code
main PROC
    call LocalSquare
    exit
main ENDP

LocalSquare PROC
    ;4 bytes for local variable (1 DWORD)
    enter 4, 0

    ;asking user for input
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt

    ;store input in local variable [ebp - 4]
    mov [ebp-4], eax

    ;square the value
    mov eax, [ebp-4]
    imul eax, eax

    ;print result
    mov edx, OFFSET resultMsg
    call WriteString
    call WriteInt
    call Crlf

    leave
    ret
LocalSquare ENDP
END main
