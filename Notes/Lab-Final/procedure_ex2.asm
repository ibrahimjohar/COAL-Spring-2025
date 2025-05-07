;
include irvine32.inc
INTEGER_COUNT = 3
.data
    str1 byte "enter a signed integer: ", 0
    str2 byte "the sum of the integers is: ", 0
    array dword INTEGER_COUNT DUP(?)
.code
main PROC
    call Clrscr
    mov esi, OFFSET array
    mov ecx, INTEGER_COUNT
    call PromptForIntegers
    call ArraySum
    call DisplaySum
    exit
main ENDP

PromptForIntegers PROC USES ecx edx esi
    mov edx, offset str1    
L1:
    call writestring
    call readint
    call crlf
    mov [esi], eax      ;store in array
    add esi, TYPE dword
    loop L1
    ret
PromptForIntegers ENDP

ArraySum PROC USES esi ecx
    mov eax, 0          ;eax -> sum
L1:
    add eax, [esi]
    add esi, TYPE dword
    loop L1
    ret
ArraySum ENDP

DisplaySum PROC USES edx
    mov edx, offset str2
    call writestring
    call writeint           ;display eax
    call crlf
    ret
DisplaySum ENDP
END main
