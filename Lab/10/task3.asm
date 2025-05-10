INCLUDE Irvine32.inc

.data
    str1 BYTE "coal lab 10 task 3", 0
    str2 BYTE "coal lab 10 task 4", 0
    equalMsg BYTE "strings are equal", 0
    notEqualMsg BYTE "strings are not equal", 0

.code
IsCompare PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov edi, [ebp+12]
    
comparisionLoop:
    mov al, [esi]
    mov bl, [edi]
    cmp al, bl
    jne not_equal
    cmp al, 0
    je equal
    inc esi
    inc edi
    jmp comparisionLoop
    
equal:
    mov edx, OFFSET equalMsg
    jmp displayMsg
    
not_equal:
    mov edx, OFFSET notEqualMsg
    
displayMsg:
    call WriteString
    call Crlf
    pop ebp
    ret 8
IsCompare ENDP

main PROC
    push OFFSET str2
    push OFFSET str1
    call IsCompare
    exit
main ENDP
END main
