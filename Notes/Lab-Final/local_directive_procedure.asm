;local directive
include irvine32.inc
.data
.code
main PROC
    call LocalProc
    exit
main ENDP

LocalProc PROC 
    LOCAL temp:WORD
    mov temp, 5
    mov eax, temp
    ret
LocalProc ENDP
END main


