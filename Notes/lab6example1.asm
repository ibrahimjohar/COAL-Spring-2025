include irvine32.inc

.data
    
.code
main PROC
    mov eax, 1

start1:
    add eax, 1
    cmp eax, 9
    call DumpRegs
    JE endd         ;jump to end if the condition is met eax==9
    jmp start1      ;otherwise continue loop back to pointing 'start1'

endd:
    exit
main ENDP
END main

