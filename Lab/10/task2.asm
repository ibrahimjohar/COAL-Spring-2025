.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc

.data
    str1 BYTE '127&j~3#^&*#*#45^', 0
    foundMsg BYTE "Found at index: ", 0
    notFoundMsg BYTE "Not found", 0
.code
Scan_String PROC
    ;args:
    ;[ebp+8]  = character to search for
    ;[ebp+12] = offset of string
    push ebp
    mov ebp, esp
    push esi
    push ecx
    
    mov esi, [ebp+12]       
    mov al, [ebp+8]         
    xor ecx, ecx            

SearchLoop:
    mov dl, [esi]           
    cmp dl, 0               
    je NotFound
    cmp dl, al              
    je Found
    inc esi
    inc ecx
    jmp SearchLoop

Found:
    mov edx, OFFSET foundMsg
    call WriteString          
    mov eax, ecx
    call WriteDec             
    jmp ExitRoutine

NotFound:
    mov edx, OFFSET notFoundMsg
    call WriteString

ExitRoutine:
    pop ecx
    pop esi
    mov esp, ebp
    pop ebp
    ret 8                   
Scan_String ENDP

main PROC
    push OFFSET str1
    push '#'
    call Scan_String
    invoke ExitProcess, 0
main ENDP
END main
