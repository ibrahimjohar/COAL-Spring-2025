include irvine32.inc
.data
	arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
	msg0 BYTE "enter a number: ", 0
	msg1 BYTE "number was found", 0
	msg2 BYTE "number not found", 0
.code
main PROC
	mov edx, OFFSET msg0
	call WriteString
	call ReadInt

	mov ecx, LENGTHOF arr
	mov esi, OFFSET arr

search:
	movzx ebx, WORD PTR [esi]
	cmp ax, bx
	je ifFound
	add esi, 2
	loop search

	mov edx, OFFSET msg2
	call WriteString
	jmp callend

ifFound:
	mov edx, OFFSET msg1
	call WriteString

callend:
	exit
main ENDP
END main
