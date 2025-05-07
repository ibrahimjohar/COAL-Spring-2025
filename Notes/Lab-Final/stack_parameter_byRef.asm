;stack parameters
;pass by reference
include irvine32.inc
.data
    count = 10
    arr WORD countDUP(?)
.code
main PROC
    push OFFSET arr
    push count
    call ArrayFill
    exit
main ENDP

ArrayFill PROC 
    push ebp
    mov ebp, esp
    pushad
    mov esi, [ebp+12]
    mov ecx, [ebp+8]
    cmp ecx, 0
    je L2

;fill the array with random numbers (up to 256)
L1:
    mov eax, 100h
    call RandomRange
    mov [esi], ax
    add esi, TYPE WORD

L2:
    popad
    pop ebp
    ret 8
ArrayFill ENDP
END main

;[           ]
;[offset(arr)]    [EBP+12]
;[   count   ]    [EBP+8] 
;[return add.]    [EBP+4] 
;[    EBP    ]    <---  EBP, ESP
