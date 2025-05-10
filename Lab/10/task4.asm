INCLUDE Irvine32.inc
.data
    str1 BYTE "coal lab 10 task 4", 0
.code
Str_Reverse PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov edi, esi
    
findingEnd:
    cmp BYTE PTR [edi], 0
    je endFound
    inc edi
    jmp findingEnd
    
endFound:
    dec edi
    
swapLoop:
    cmp esi, edi
    jge swapDone
    mov al, [esi]
    mov bl, [edi]
    mov [esi], bl
    mov [edi], al
    inc esi
    dec edi
    jmp swapLoop
    
swapDone:
    pop ebp
    ret 4
Str_Reverse ENDP

main PROC
    push OFFSET str1
    call Str_Reverse
    mov edx, OFFSET str1
    call WriteString
    call Crlf

    exit
main ENDP
END main
