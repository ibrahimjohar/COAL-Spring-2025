include irvine32.inc
.data
.code
main PROC
	mov eax, 0
	mov ecx, 5
L1:
	inc eax
	call WriteDec
	call crlf
	loop L1
	exit
main ENDP
END main

; Output:
; 1
; 2
; 3
; 4
; 5
