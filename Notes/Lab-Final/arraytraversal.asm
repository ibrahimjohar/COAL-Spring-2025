;traverse through array and store in register
include irvine32.inc

.data
    intArr WORD 100h, 200h, 300h, 400h, 500h
.code
main PROC
    mov esi, 0
    mov eax, 0
    mov ecx, LENGTHOF intArr
    call dumpregs
L1:
    mov ax, intArr[esi]
    add esi, TYPE intArr
    call dumpregs
    loop L1

    exit
main ENDP
END main

