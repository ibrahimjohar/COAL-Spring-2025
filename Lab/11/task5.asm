include irvine32.inc
.data
    num1 QWORD 13579BDF2468ACE0h    
    num2 QWORD 0ECA86420FDB97531h   
    result QWORD ?                  
.code

Extended_Add proc
    mov eax, [esi]     
    add eax, [edi]      
    mov [ebx], eax      
    mov eax, [esi+4]   
    adc eax, [edi+4]    
    mov [ebx+4], eax    
    ret
Extended_Add ENDP

main PROC
    mov esi, offset num1
    mov edi, offset num2
    mov ebx, offset result 
    
    call Extended_Add

    mov eax, DWORD PTR [result+4]  
    call WriteHex
    mov eax, DWORD PTR [result]    
    call WriteHex
    call Crlf

    exit
main ENDP
END main
