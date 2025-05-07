;find largest number through a stack
include irvine32.inc
.data

.code
main PROC
    push 5
    push 7
    push 3
    push 2

    mov eax, 0      ;eax -> largest value
    mov ecx, 4  

L1:
    pop edx
    cmp edx, eax
    JL Set
    mov eax, edx    ;found largest number
Set:
    loop L1
    call writedec
    exit
main ENDP
END main

