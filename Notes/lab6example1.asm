include irvine32.inc

.data
    
.code
main PROC
    mov eax, 1

start1:
    add eax, 1
    cmp eax, 9
    call DumpRegs
    JE endd
    jmp start1

endd:
    exit
main ENDP
END main
