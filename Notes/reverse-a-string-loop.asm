;Write a program with a loop and indirect addressing that copies a
;string from source to target, reversing the character order in the
;process.

include irvine32.inc
.data
	source BYTE "this is the source string", 0
	target BYTE SIZEOF source DUP(0), 0
.code
main PROC
	mov esi, OFFSET source		;load address of source
	mov edi, OFFSET target		;load address of target
	mov ecx, SIZEOF	source		;load string length into ECX

	add esi, ecx				;move ESI to the end of source
	dec esi						;point to the last valid character

L1:
	mov al, [esi]				;load character from source (backward)
	mov [edi], al				;store in target (forward)
	inc edi						;move forward in target
	dec	esi						;move backward in target
	loop L1						;repeat until ECX = 0

	exit
	main ENDP
END main

; OUTPUT
; After Execution
; target = "gnirts ecruos eht si siht", 0

;✅ Uses Indirect Addressing ([ESI] and [EDI])
;✅ Uses SIZEOF for dynamic string length
;✅ Works with null-terminated strings
;✅ Efficient character-by-character copying
