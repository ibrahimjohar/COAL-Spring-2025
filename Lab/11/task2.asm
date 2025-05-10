include irvine32.inc
.data
.code
main PROC
    mov ax, -128      
    movzx eax, ax     
    mov ebx, eax      
    shl eax, 16       
    sar eax, 16       
    mov ecx, eax     
    rol cx, 8         
    ror cx, 8         
    cwde              
    call WriteInt      
    call Crlf
    exit
main ENDP
END main
