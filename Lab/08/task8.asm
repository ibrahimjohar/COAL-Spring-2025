include irvine32.inc
.data
    msg0 BYTE "enter a character: ", 0
    msg1 BYTE "its an alphabet.", 0
    msg2 BYTE "not an alphabet.", 0
.code
main PROC
    mov edx, OFFSET msg0
    call WriteString
    call ReadChar
    call WriteChar
    call Crlf

    ;check if AL is btw 'A' & 'Z'

    cmp al, 'A'
    jl not_alphabet      ;if AL < 'A', not alphabet
    
    cmp al, 'Z'
    jle is_alphabet      ;if AL <= 'Z', alphabet

    ;check if AL is btw 'a' & 'z'

    cmp al, 'a'
    jl not_alphabet
    
    cmp al, 'z'
    jle is_alphabet

not_alphabet:
    mov edx, OFFSET msg2
    call WriteString
    call Crlf
    jmp callend

is_alphabet:
    mov edx, OFFSET msg1
    call WriteString
    call Crlf

callend:
	exit
main ENDP
END main
