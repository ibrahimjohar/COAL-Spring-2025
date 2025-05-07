;local variables
include irvine32.inc
.data
.code
main PROC
    call MySub
    exit
main ENDP

MySub PROC 
    push ebp
    mov ebp, esp
    sub esp, 8
    mov DWORD PTR [ebp-4], 10   ;first parameter
    mov DWORD PTR [ebp-8], 20   ;second parameter
    mov esp, ebp
    pop ebp
    ret
MySub ENDP
END main


