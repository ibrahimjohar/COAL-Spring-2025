include irvine32.inc
.data
	arr DWORD 4 DUP (?)
	msg1 BYTE "enter 4 integers: ",0
	msg2 BYTE "all integers are equal",0
	msg3 BYTE "integers are not equal",0
.code
main PROC
	mov edx, OFFSET msg1
	call WriteString
	mov ecx, 4
	mov esi, 0

L1:
	call ReadInt
	mov arr[esi], eax
	add esi, 4
	loop L1
	
	mov esi, 0
	mov ecx, 4
	mov eax, arr[esi]

compare:
	cmp eax, arr[esi]
	JNE endstat
	add esi, 4
	loop compare
	
	mov edx, OFFSET msg2
	call WriteString
	jmp callend

endstat:
	mov edx, OFFSET msg3
	call WriteString
	
callend:
	exit
main ENDP
END main
