;LAB 6 - TASK 1

include irvine32.inc
.data
.code
main PROC
    mov eax, 0          ;F(0) = 0
    mov ebx, 1          ;F(1) = 1
    mov ecx, 10         ;counter = 10
L1:
    call WriteDec       ;print current fibonacci number in eax
    call crlf

    add eax, ebx        ;calculate next fibonacci num -> eax = eax + ebx
    xchg eax, ebx       ;swap:  eax becomes ebx, ebx becomes new eax
    loop L1             ;loop until ecx = 0

    exit
main ENDP
END main

;OUTPUT
;0
;1
;1
;2
;3
;5
;8
;13
;21
;34
