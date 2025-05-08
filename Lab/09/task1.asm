include irvine32.inc
.data
	var1 DWORD 2
    var2 DWORD 3
    var3 DWORD 4
.code
main PROC
	push var3
	push var2
	push var1
	call ThreeProd
	add esp, 12			;clean up the 3 arguments (3*4bytes)
	call WriteDec
	exit
main ENDP


ThreeProd PROC
	push ebp
	mov ebp, esp
	mov eax, [ebp+8]	;var1
	mul DWORD PTR [ebp+12]		;var2
	mul DWORD PTR [ebp+16]		;var3
	pop ebp
	ret
ThreeProd ENDP

END main
