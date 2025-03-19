INCLUDE Irvine32.inc

.data
    outerMsg BYTE "Outer loop iteration: ", 0
    innerMsg BYTE "  Inner loop iteration: ", 0
.code
main PROC
    mov ecx, 3             ; Outer loop runs 3 times
outerLoop:
    call Crlf              ; Newline for better formatting
    mov edx, OFFSET outerMsg
    call WriteString       ; Print "Outer loop iteration: "
    
    mov eax, 3             ; Store 3 in EAX
    sub eax, ecx           ; Perform (3 - ECX)
    add eax, 1             ; Perform (+1)
    call WriteDec          ; Print calculated iteration number
    call Crlf

    mov ebx, 2             ; Inner loop runs 2 times
innerLoop:
    mov edx, OFFSET innerMsg
    call WriteString       ; Print "  Inner loop iteration: "

    mov eax, 2             ; Store 2 in EAX
    sub eax, ebx           ; Perform (2 - EBX)
    add eax, 1             ; Perform (+1)
    call WriteDec          ; Print calculated iteration number
    call Crlf

    dec ebx                ; Decrease inner loop counter
    jnz innerLoop          ; If EBX != 0, repeat inner loop

    loop outerLoop         ; If ECX != 0, repeat outer loop

    exit
main ENDP
END main
