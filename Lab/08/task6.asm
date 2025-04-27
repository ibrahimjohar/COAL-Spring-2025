include irvine32.inc
.data
	arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
	msg0 BYTE "sorted array: ", 0
	n DWORD ?
.code
main PROC
	mov eax, LENGTHOF arr
	mov n, eax

	;outer passes (n-1)
	mov ecx, n
	dec ecx

outerloop:
	mov edi, 0			;to start at arr[0]
	mov ebx, ecx		;save count before going to inner loop

innerloop:
	mov ax, arr[edi]
	mov dx, arr[edi+2]

	cmp ax, dx			
	jle noSwap			;if arr[index] ≤ arr[index+1], skip swap

	;swap
	mov arr[edi], dx
	mov arr[edi+2], ax

noSwap:
	add edi, TYPE arr	
	dec ebx
	jnz innerloop

	loop outerloop		;next outer pass

	;print sorted arr
	mov ecx, n
	mov edi, 0

	mov edx, OFFSET msg0
	call WriteString
	call Crlf

printloop:
	movzx eax, WORD PTR arr[edi]
	call WriteDec
	call Crlf
	add edi, TYPE arr
	loop printloop

	exit
main ENDP
END main
