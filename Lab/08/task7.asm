include irvine32.inc
.data
    weekdays BYTE "monday",0,"tuesday",0,"wednesday",0,"thursday",0,"friday",0,"saturday",0,"sunday",0
    msg0 BYTE "enter a number (1-7): ",0
    msg1 BYTE "invalid input.",0
.code
main PROC
    mov edx, OFFSET msg0
    call WriteString
    call ReadInt

    cmp eax, 1
    jl invalid            ;if input < 1 that is invalid
    cmp eax, 7
    jg invalid            ;if input > 7 that is invalid

    dec eax               ;for indexing(0–6)
    mov ecx, eax

    mov esi, OFFSET weekdays

findWeekday:
    cmp ecx, 0
    je printWeekday

nextWeekday:
    ;moving to next string
    ;skip curr weekday name
    findzero:
        cmp BYTE PTR [esi], 0
        je foundzero
        inc esi
        jmp findzero

foundzero:
    inc esi               ;move to start of next weekday
    dec ecx
    jmp findWeekday

printWeekday:
    mov edx, esi
    call WriteString
    call Crlf
    jmp callend

invalid:
    mov edx, OFFSET msg1
    call WriteString
    call Crlf

callend:
	exit
main ENDP
END main
