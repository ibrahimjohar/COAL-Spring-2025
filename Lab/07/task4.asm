include irvine32.inc
.data
	star BYTE "*", 0
	space BYTE " ", 0
	input BYTE "enter num of columns: ", 0
	col DWORD ?
.code
main PROC
	mov edx, OFFSET input
	call writestring
	call readdec
	mov col, eax
	call crlf
	call patternPrint
	call crlf
	exit
main ENDP

patternPrint PROC
	mov ecx, col
	mov eax, 1
L1:
	push ecx
	mov ebx, ecx
	mov ecx, ebx
L2:
	mov edx, OFFSET space
	call writestring
	loop L2
	mov ecx, eax
L3:
	mov edx, OFFSET star
	call writestring
	loop L3
	inc eax
	call crlf
	pop ecx
	loop L1
	ret
patternPrint ENDP

	exit
END main
