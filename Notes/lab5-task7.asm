;LAB 5 TASK 7

;For each array, add its 1st and last element using scale factors and display the result in a
;separate register. (Hint: Use ESI and TYPE Operator).

include irvine32.inc
.data
    arrayB BYTE 60,70,80
    arrayW WORD 150,250,350
    arrayD DWORD 600,1200,1800

    bVar DWORD ?
    wVar DWORD ?
    dVar DWORD ?
.code
main PROC
    ;BYTE array
    mov esi, OFFSET arrayB
    mov al, [esi]
    add al, [esi + (2 * TYPE arrayB)]       ;60 + 80
    movzx eax, al
    mov bVar, eax
    call WriteDec
    call crlf

    ;WORD array
    mov esi, OFFSET arrayW
    mov ax, [esi]
    add ax, [esi + (2 * TYPE arrayW)]       ;150 + 350
    movzx eax, ax
    mov wVar, eax
    call WriteDec
    call crlf

    ;DWORD array
    mov esi, OFFSET arrayD
    mov eax, [esi]
    add eax, [esi + (2 * TYPE arrayD)]      ;600 + 1800
    mov dVar, eax
    call WriteDec
    call crlf

    exit
main ENDP
END main


; OUTPUT
; 140
; 500
; 2400
