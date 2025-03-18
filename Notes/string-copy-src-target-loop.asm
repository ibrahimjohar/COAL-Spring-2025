include irvine32.inc
.data
	source BYTE "this is the source string", 0
	target BYTE SIZEOF source DUP(0), 0
.code
	main PROC
	mov esi, 0					;index register
	mov ecx, SIZEOF source		;loop counter
L1:
	mov al, source[esi]			;get char from source
	mov target[esi], al			;store in the target
	inc esi						;move to next char
	loop L1						;repeat for entire string
	exit
	main ENDP
END main

; Output
; This assembly program copies a string from source to target using a loop.
; target contains: "this is the source string" (same as source).
; Loop executes SIZEOF source times (which includes the null terminator).
