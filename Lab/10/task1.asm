.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc

.data
    str1 BYTE '127&j~3#^&*#*#45^',0
    foundMsg BYTE "Found at index: ",0
    notFoundMsg BYTE "Not found",0
.code
Scan_String PROC
    mov esi, OFFSET str1
    xor ecx, ecx             ;ecx = 0

SearchLoop:
    mov al, [esi]
    cmp al, 0
    je NotFound
    cmp al, '#'
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
    call Crlf
    ret
Scan_String ENDP

main PROC
    call Scan_String
    invoke ExitProcess, 0
main ENDP

END main

