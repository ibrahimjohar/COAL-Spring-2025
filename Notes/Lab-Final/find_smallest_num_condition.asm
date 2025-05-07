include irvine32.inc

.data
    var1 DWORD 50
    var2 DWORD 25
    var3 DWORD 103
    msg BYTE "The smallest integer is: ", 0    

.code
main PROC
    mov eax, var1        ; Assume var1 is the smallest initially
    cmp var2, eax        ; Compare var2 < eax?
    jae checkVar3        ; If not smaller, skip
    mov eax, var2        ; If smaller, update eax

checkVar3:
    cmp var3, eax        ; Compare var3 < current smallest?
    jae printResult      ; If not smaller, skip
    mov eax, var3        ; If smaller, update eax

printResult:
    mov edx, OFFSET msg
    call WriteString
    call WriteDec
    call Crlf

    exit
main ENDP
END main
