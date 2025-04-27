include irvine32.inc
.data
	var DWORD 0
	msg1 BYTE "hello", 0
	msg2 BYTE "world", 0
.code
main PROC
whileLoop:
	mov eax, var
	cmp eax, 5
	jge elseblock
		
	mov edx, offset msg1
	call writestring
	call crlf
	inc eax
	mov var, eax
	cmp eax, 10
	jle whileLoop
		
elseblock:
	mov edx, offset msg2
	call writestring
	call crlf
	inc eax
	mov var, eax
	cmp eax, 10
	jle whileLoop
	
callend:
	exit
main ENDP
END main
