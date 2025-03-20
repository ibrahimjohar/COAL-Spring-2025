;LAB 6 - TASK 2a

include irvine32.inc
.data
    num BYTE "1", 0
    count DWORD 0
.code
main PROC
    mov ecx, 5                  ;outer loop (num of rows)
L1:
    mov count, ecx              ;save outer loop counter
    mov ecx, 5                  ;calculate num of 1s in the row
    sub ecx, count
    add ecx, 1                  ;ecx determines the num of 1s to print

L2:
    mov edx, OFFSET num
    call WriteString            ;print "1"
    mov al, ' '
    call WriteChar
    loop L2                     ;repeat for current row

    call crlf                   ;move to next row
    loop L1                     ;repeat outer loop    
    
    exit
main ENDP
END main

;OUTPUT
;1
;1 1
;1 1 1
;1 1 1 1
;1 1 1 1 1
