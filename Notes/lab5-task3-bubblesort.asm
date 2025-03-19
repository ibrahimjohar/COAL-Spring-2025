;LAB 5 TASK 3

;Initialize a Byte array consisting of elements 61,43,11,52, 25. Sort the given array in ascending
;order directly with the help of registers (you do not need to use a loop here). Use direct-offset
;addressing to access the array elements. (Hint: Use new array for sorted elements). What
;would be changes in code if declared array was of WORD and DWORD size?

;BUBBLE SORT IMPLEMENTATION

include irvine32.inc
.data
    array BYTE 61, 43, 11, 52, 25
.code
main PROC
    mov ecx, LENGTHOF array  ; Get size of the array dynamically
    dec ecx                  ; Outer loop counter (size - 1)

outerloop:
    mov esi, 0               ; Start from the first element
    mov ebx, ecx             ; Copy outer loop counter to EBX

innerloop:
    mov al, array[esi]       ; Load current element into AL
    mov dl, array[esi+1]     ; Load next element into DL

    cmp al, dl               ; Compare the two elements
    jbe noSwap               ; Skip swap if already in order

    ; Swap values
    mov array[esi], dl
    mov array[esi+1], al

noSwap:
    inc esi                  ; Move to next pair
    dec ebx                  ; Decrease inner loop counter
    jnz innerloop            ; Repeat until end of inner loop

    dec ecx                  ; Decrease outer loop counter
    jnz outerloop            ; Continue sorting

    ; Display sorted array
    mov ecx, LENGTHOF array  ; Load array size again for printing
    mov esi, 0

printLoop:
    movzx eax, array[esi]    ; Load element into EAX
    call WriteDec            ; Print decimal value
    call crlf
    inc esi
    loop printLoop           ; Loop until all elements are printed

    exit
main ENDP
END main


; OUTPUT
11
25
43
52
61
