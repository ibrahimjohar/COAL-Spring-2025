include irvine32.inc
.data
    columns DWORD 5     ;number of columns
    star BYTE '*'
.code
main PROC
    mov eax, columns    
    call print_pattern

    exit
main ENDP

;-------------------------------------------------

print_pattern PROC
    ;eax = num of columns
    mov esi, eax        ;save cols value in esi
    mov ebx, 1          ;row counter

outer_loop:
    mov ecx, ebx        ;num of stars in curr row

inner_loop:
    mov al, star
    call WriteChar
    loop inner_loop

    call Crlf

    inc ebx
    cmp ebx, esi
    jle outer_loop     ;looping till row = cols
    ret
print_pattern ENDP

END main
