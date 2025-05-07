;enter and leave instructions
include irvine32.inc
.data
    var1 DWORD 5
    var2 DWORD 6
.code
main PROC
    push var2
    push var1
    call AddTwo
    exit
main ENDP

AddTwo PROC 
    enter 0, 0
    mov eax, [ebp+12]
    add eax, [ebp+8]
    pop ebp
    leave
    ret
AddTwo ENDP
END main
