include irvine32.inc
.data
    n DWORD ?
    msg byte "enter a num: ", 0
    msg2 byte "sum of numbers from 1 till your num: ", 0
.code
main PROC
    mov edx, offset msg
    call writestring
    call readdec
    call sumN
    mov edx, offset msg2
    call writestring
    call writedec
    exit
main ENDP

sumN PROC
    push ecx
    push ebx
    mov ecx, eax
    mov eax, 0
    mov ebx, 1
L1:
    add eax, ebx
    inc ebx
    loop L1
    pop ebx
    pop ecx
    ret
sumN ENDP
END main
