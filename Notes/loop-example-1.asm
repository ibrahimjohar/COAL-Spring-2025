; Write a code to add 16- bit integers Stored in an Pre-defined Array.
; LOOP Instructions must be Used.
; Also use OFFSET, LENGTHOF and TYPE Operators.
; Array must contain 4- unsigned intergers.

include irvine32.inc
.data
	intarray WORD 100h, 200h, 300h, 400h
.code
	main PROC
	
	mov edi, OFFSET intarray	;address
	mov ecx, LENGTHOF intarray	;loop counter
	mov ax, 0					;zero the sum
L1:
	add ax, [edi]				;add an integer
	add edi, TYPE intarray		;point to next
	loop L1						;repeat until ECX = 0
	exit
	main ENDP
END main

; Output
; AX = A00h (2560 in decimal)
; Loop executes 4 times (one for each element)
