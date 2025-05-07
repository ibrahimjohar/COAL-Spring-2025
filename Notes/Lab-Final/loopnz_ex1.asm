;take input from user until user press 0

include irvine32.inc
.data
.code
main PROC
    mov ecx, 5
L1:
    call readint
    cmp eax, 0
    loopnz L1

    call dumpregs

    exit
main ENDP
END main
