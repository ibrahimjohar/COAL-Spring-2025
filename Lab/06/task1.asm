include irvine32.inc
.code
main PROC
    mov eax, 0          
    mov ebx, 1          
    mov ecx, 10         
L1:
    call WriteDec       
    call Crlf           
    add eax, ebx        
    xchg eax, ebx       
    loop L1             
    exit
main ENDP
END main
