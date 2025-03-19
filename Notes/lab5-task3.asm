;LAB 5 TASK 3

;Initialize a Byte array consisting of elements 61,43,11,52, 25. Sort the given array in ascending
;order directly with the help of registers (you do not need to use a loop here). Use direct-offset
;addressing to access the array elements. (Hint: Use new array for sorted elements). What
;would be changes in code if declared array was of WORD and DWORD size?

include irvine32.inc
.data
	array BYTE 61,43,11,52,25
	sortedArr BYTE 5 DUP(?)
.code
main PROC
	; manual sorting of elements

	mov al, 11
	mov sortedArr, al

	mov al, 25
	mov sortedArr+1, al

	mov al, 43
	mov sortedArr+2, al

	mov al, 52
	mov sortedArr+3, al

	mov al, 61
	mov sortedArr+4, al

	exit
	main ENDP
END main

; OUTPUT
; We use direct-offset addressing (sortedArray+index) to store the sorted values manually.

; If the array consists of WORD (2 bytes per element):
; Declare the array as WORD instead of BYTE.
; Adjust direct offsets by multiplying the index by 2 (since each element is 2 bytes).

; If the array consists of DWORD (4 bytes per element):
; Declare the array as DWORD instead of BYTE or WORD.
; Adjust direct offsets by multiplying the index by 4 (since each element is 4 bytes).

; Array Type	Offset Increment
; BYTE	        +1 per element
; WORD	        +2 per element
; DWORD	        +4 per element
