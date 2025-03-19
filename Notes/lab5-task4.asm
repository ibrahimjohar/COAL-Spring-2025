;LAB 5 TASK 4

;Now initialize three double word variables SUM1, SUM2, SUM3 and perform following operations
;(expressed in pseudo-code here):
;SUM1 = arrayB[0] + arrayW[0] + arrayD[0]
;SUM2 = arrayB[1] + arrayW[1] + arrayD[1]
;SUM3 = arrayB[2] + arrayW[2] + arrayD[2]

include irvine32.inc

.data
    arrayB BYTE 10, 20, 30          ; 8-bit values
    arrayW WORD 150, 250, 350       ; 16-bit values
    arrayD DWORD 600, 1200, 1800    ; 32-bit values

    SUM1 DWORD ?                    ; To store results
    SUM2 DWORD ?
    SUM3 DWORD ?

.code
main PROC
    ; SUM1 = arrayB[0] + arrayW[0] + arrayD[0]
    movzx eax, arrayB[0]   ; Zero-extend BYTE to DWORD
    movzx ebx, arrayW[0]   ; Zero-extend WORD to DWORD
    mov ecx, arrayD[0]     ; Direct MOV since it's already 32-bit
    add eax, ebx
    add eax, ecx
    mov SUM1, eax

    ; SUM2 = arrayB[1] + arrayW[1] + arrayD[1]
    movzx eax, arrayB[1]
    movzx ebx, arrayW[2]   ; Use `[2]` because WORDs take 2 bytes
    mov ecx, arrayD[4]     ; Use `[4]` because DWORDs take 4 bytes
    add eax, ebx
    add eax, ecx
    mov SUM2, eax

    ; SUM3 = arrayB[2] + arrayW[4] + arrayD[8]
    movzx eax, arrayB[2]
    movzx ebx, arrayW[4]   ; Offset 4 bytes (WORD * 2)
    mov ecx, arrayD[8]     ; Offset 8 bytes (DWORD * 2)
    add eax, ebx
    add eax, ecx
    mov SUM3, eax

    exit
main ENDP
END main


; OUTPUT
