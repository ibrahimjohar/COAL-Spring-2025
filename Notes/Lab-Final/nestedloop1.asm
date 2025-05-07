include irvine32.inc

.data
    
.code
main PROC
    mov eax, 0
    mov ebx, 0
    mov ecx, 5
L1:
    inc eax
    mov edx, ecx    ;save outer loop counter in edx
    
    mov ecx, 10
L2:
    inc ebx
    call dumpregs
    loop L2
    
    mov ecx, edx    ;ret save outer loop counter in ecx
    loop L1

    call dumpregs
    exit
main ENDP
END main

