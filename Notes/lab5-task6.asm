;LAB 5 TASK 6

;Subtract an array of 5 doublewords using indirect operands.
;Save the final result in a variable.

include irvine32.inc
.data
    array DWORD 100, 25, 10, 5, 2
    result DWORD ?
.code
main PROC
    mov esi, OFFSET array   ;load address of first element
    mov eax, [esi]

    sub eax, [esi+4]

    sub eax, [esi+8]

    sub eax, [esi+12]

    sub eax, [esi+16]

    mov result, eax
    call WriteDec
    call crlf
    call DumpRegs
    exit
main ENDP
END main


; OUTPUT
; 58
