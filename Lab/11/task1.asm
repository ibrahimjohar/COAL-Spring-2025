include irvine32.inc
.data
    msg0 byte "final result: ", 0
.code
main PROC
    mov eax, 5      
    mov ebx, eax      
    mov ecx, eax    
    shl eax, 4        
    shl ebx, 2        
    add eax, ebx      
    add eax, ecx      

    mov edx, OFFSET msg0
    call WriteString   
    call WriteDec      
    call Crlf         
    
    exit
main ENDP
END main
