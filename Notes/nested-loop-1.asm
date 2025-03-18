include irvine32.inc
.data
.code
	main PROC
	mov eax, 0
	mov ebx, 0
	mov ecx, 5
L1:
	inc eax
	mov edx, ecx
	mov ecx, 10
L2:
	inc ebx
	loop L2
	mov ecx, edx
	exit
	main ENDP
END main

; L1 executes 5 times
; L2 executes 50 times in total (10 times per outer loop iteration)
