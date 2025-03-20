;LAB 6 - TASK 2b

include irvine32.inc
.data
    num BYTE "1", 0
    ;count DWORD 0
.code
main PROC
    mov ecx, 5                  ;outer loop (num of rows)
L1:
    mov edx, ecx                ;store current row count in edx

L2:
    mov eax, OFFSET num
    call WriteString            ;print "1"
    mov al, ' '
    call WriteChar
    dec edx                     ;decrement counter
    cmp edx, 0
    jne L2                      ;keep printing until edx reaches 0

    call crlf       
    loop L1                     ;decrease row count and repeat
    
    exit
main ENDP
END main

;OUTPUT
;1 1 1 1 1
;1 1 1 1
;1 1 1
;1 1
;1
