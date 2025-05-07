;c code:
;int a, b;
;if(a > b){
;   a = a + 10;
;}
;printf("b: %d", b);
;printf("a: %d", a);

include irvine32.inc

.data
    a DWORD 10
    b DWORD 5
    msg0 BYTE "b: ", 0
    msg1 BYTE "a: ", 0
.code
main PROC
    mov eax, a          ;eax = a
    cmp eax, b
    jg ifLabel          ;if (a>b) jump to ifLabel

    jmp skipIf          ;else skip to printing b

ifLabel:
    add eax, 10         ;a = a + 10
    mov a, eax          ;store result back in a
              
skipIf:
    mov eax, b
    mov edx, offset msg0
    call WriteString
    call WriteDec
    
    call crlf

    mov eax, a
    mov edx, offset msg1
    call WriteString
    call WriteDec

    exit
main ENDP
END main
