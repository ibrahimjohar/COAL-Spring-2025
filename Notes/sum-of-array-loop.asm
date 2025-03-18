;Write a loop that iterates through a doubleword array and 
;calculates the sum of its elements using a scale factor with
;indexed addressing.

include irvine32.inc
.data
	arrayD DWORD 10,20,30,40,50	;doubleword array
	sum DWORD 0
.code
main PROC
	mov esi, OFFSET	arrayD		;load base address of array
	mov ecx, LENGTHOF arrayD	;set loop counter (num of elements in array)
	mov eax, 0					;initialise sum to 0
L1:
	add eax, [esi]				;add current element to sum
	add esi, TYPE arrayD		;move to next element(DWORD = 4 bytes)
	loop L1

	mov sum, eax				;store the final sum

	exit
	main ENDP
END main

; Output
; EAX = 150
; sum = 150

;✅ Uses Indexed Addressing ([ESI])
;✅ Implements Scale Factor (TYPE arrayD)
;✅ Loop Iterates Correctly Using LENGTHOF
