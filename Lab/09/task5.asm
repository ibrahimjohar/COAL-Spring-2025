.386
.model flat, stdcall
.stack 4096
include irvine32.inc
.data
    arr DWORD 5, 3, 8, 1, 2
    sizeArr = ($ - arr) / TYPE arr
.code
BubbleSort PROC
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]
    mov ecx, [ebp+12]
    dec ecx

outerLoop:
    push ecx
    mov edi, esi

innerLoop:
    mov eax, [edi]
    cmp eax, [edi+4]
    jle noSwap
    xchg eax, [edi+4]
    mov [edi], eax

noSwap:
    add edi, 4
    loop InnerLoop
    pop ecx
    loop OuterLoop
    pop ebp
    ret 8
BubbleSort ENDP

main PROC
    push sizeArr
    push OFFSET arr
    call BubbleSort
    mov esi, OFFSET arr
    mov ecx, sizeArr

DisplayArray:
    mov eax, [esi]
    call WriteDec
    mov al, ' '
    call WriteChar
    add esi, 4
    loop DisplayArray
    exit
main ENDP
END main
