.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc
.data
    val1    SDWORD 20      
    val2    SDWORD 10
    val3    SDWORD 5
    msg1    BYTE "original values:",0
    msg2    BYTE "val1 = ",0
    msg3    BYTE "val2 = ",0
    msg4    BYTE "val3 = ",0
    result  BYTE "result (val1 = (val2/val3)*(val1/val2)): ",0
    nl      BYTE 0Dh, 0Ah, 0  ;newline

.code
main PROC
    mov edx, OFFSET msg1
    call WriteString
    call Crlf
    
    mov edx, OFFSET msg2
    call WriteString
    mov eax, val1
    call WriteInt
    call Crlf
    
    mov edx, OFFSET msg3
    call WriteString
    mov eax, val2
    call WriteInt
    call Crlf
    
    mov edx, OFFSET msg4
    call WriteString
    mov eax, val3
    call WriteInt
    call Crlf
    call Crlf

    ;calc(val2 / val3)
    mov eax, val2
    cdq
    idiv val3
    mov ebx, eax

    ;calc(val1 / val2)
    mov eax, val1
    cdq
    idiv val2

    ;(EBX * EAX)
    imul ebx

    mov val1, eax

    mov edx, OFFSET result
    call WriteString
    call WriteInt
    call Crlf
    call Crlf

    exit
main ENDP
END main
