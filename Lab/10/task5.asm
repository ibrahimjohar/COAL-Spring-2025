INCLUDE Irvine32.inc
.data
    arr DWORD 10 DUP(?)
    multiplier DWORD 6
.code
Load PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov ecx, [ebp+12]
    mov ebx, 0
    
fillValuesLoop:
    mov eax, ebx
    imul eax, multiplier
    mov [esi], eax
    add esi, 4
    inc ebx
    loop fillValuesLoop
   
    pop ebp
    ret 8
Load ENDP

main PROC
    push LENGTHOF arr
    push OFFSET arr
    call Load
    
    mov esi, OFFSET arr
    mov ecx, LENGTHOF arr
    
printArr:
    mov eax, [esi]
    call WriteDec
    mov al, ' '
    call WriteChar
    add esi, 4
    loop printArr
    call Crlf
    exit
main ENDP
END main
