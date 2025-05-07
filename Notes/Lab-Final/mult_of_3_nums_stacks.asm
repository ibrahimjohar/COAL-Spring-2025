;displays the product of three integers through a stack

include irvine32.inc
.data
multp DWORD 2
.code
main PROC
    mov eax, 1
    mov ecx, 3
L1:
    push multp
    add multp, 2
    loop L1

    mov ecx, 3
L2:
    pop ebx
    mul ebx ;multiply eax by ebx -> result stored in eax
    loop L2

    call dumpregs
    exit
main ENDP
END main

