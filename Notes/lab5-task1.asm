;LAB 5 TASK 1

;Declare a 32-bit signed integer val1 and initialize it with the eight thousand. 
;If val1 is incremented by 1 using the ADD instruction, what will be the values 
;of the Carry and Sign flags?

include irvine32.inc
.data
	val1 SDWORD 8000	;32 bit signed integer assigned 8000
.code
main PROC
	mov eax, val1
	add eax, 1
	mov val1, eax

	;check flags (CF & ZF will be updated based on the result)
	call DumpRegs
	exit
	main ENDP
END main

; OUTPUT
; CF=0  SF=0  ZF=0  OF=0  AF=0  PF=1
