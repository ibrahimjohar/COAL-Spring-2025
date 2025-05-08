INCLUDE irvine32.inc

.data
    arr DWORD 1,2,3,4,5,6,7,8,9,10,20,19,18,17,16,15,14,13,12,11
    count DWORD 20
    minMsg BYTE "minimum val: ", 0
    maxMsg BYTE "maximum val: ", 0

.code
main PROC
    push OFFSET arr
    push count
    push OFFSET minMsg
    push OFFSET maxMsg
    call MinMaxArray
    exit
main ENDP

MinMaxArray PROC
    push ebp
    mov ebp, esp
    pushad

    mov esi, [ebp+20]        ;offset arr
    mov ecx, [ebp+16]        ;count
    mov edx, [ebp+12]        ;offset minMsg
    mov edi, [ebp+8]         ;offset maxMsg

    mov eax, [esi]           ;first element
    mov ebx, eax             ;max = eax
    mov ecx, eax             ;min = eax

    mov edx, [ebp+12]        ;restore edx for minMsg printing later
    mov esi, [ebp+20]
    add esi, 4
    mov edx, [ebp+16]
    dec edx                  ;correct loop counter

findLoop:
    mov eax, [esi]
    cmp eax, ebx
    jg setMax
    cmp eax, ecx
    jl setMin
    jmp next

setMax:
    mov ebx, eax
    jmp next

setMin:
    mov ecx, eax

next:
    add esi, 4
    dec edx
    jnz findLoop

    ;print max
    mov edx, [ebp+8]
    call WriteString
    mov eax, ebx
    call WriteInt
    call Crlf

    ;print min
    mov edx, [ebp+12]
    call WriteString
    mov eax, ecx
    call WriteInt
    call Crlf

    popad
    pop ebp
    ret 16
MinMaxArray ENDP

END main
