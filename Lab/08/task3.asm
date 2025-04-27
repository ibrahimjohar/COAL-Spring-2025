include irvine32.inc
.data
	var DWORD 5
	x DWORD ?
.code
main PROC
	mov edx, var
	inc edx
	mov ecx, 10		;array length from task 2's array

	cmp var, ecx
	jge elseblock
	
	cmp ecx, edx
	jl elseblock
	
	mov x, 0
	jmp callend
		
elseblock:
	mov x, 1
	
callend:
	mov eax, x
	call writedec
	
	exit
main ENDP
END main
