INCLUDE irvine32.inc  

.data  
    pattern_msg BYTE "Task 2: Pattern", 0  

.code  
main PROC  
    mov edx, OFFSET pattern_msg  
    call WriteString  
    call Crlf  

    ; First Pattern  
    mov ecx, 4  
outer_loop1:  
    mov ebx, ecx  
inner_loop1:  
    mov eax, 5  
    sub eax, ebx  
    call WriteDec  
    dec ebx  
    jnz inner_loop1  

    call Crlf  
    loop outer_loop1  

    call Crlf  

    ; Second Pattern  
    mov ecx, 4  
outer_loop2:  
    mov ebx, ecx  
inner_loop2:  
    mov eax, ebx  
    call WriteDec  
    dec ebx  
    jnz inner_loop2  

    call Crlf  
    loop outer_loop2  

    exit  
main ENDP  
END main  

