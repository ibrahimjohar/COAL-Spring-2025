include irvine32.inc
.data
	intArr WORD 100h, 200h, 300h, 400h, 500h
.code
main PROC
	mov esi, 0
	mov eax, 0
	mov ecx, LENGTHOF intArr
	call DumpRegs
L1:
	mov ax, intArr[esi]
	add esi, TYPE intArr
	call DumpRegs
	loop L1

	exit
main ENDP
END main

; OUTPUT:
; EAX = 0000 0000  -> initial state of register
; EAX = 0000 0100
; EAX = 0000 0200
; EAX = 0000 0300
; EAX = 0000 0400
; EAX = 0000 0500
