;while(eax < ebx)
;   eax = eax + 1

include irvine32.inc
.data
.code
main PROC
top:
    cmp eax, ebx        ;check loop cond.
    jae next            ;false? exit loop
    inc eax             ;body of loop
    jmp top             ;repeat the loop
next:
    exit
main ENDP
END main

;while(ebx <= val1)
;{
;   ebx = ebx + 5
;   val1 = val1 - 1
;}
include irvine32.inc
.data
    val1 DWORD 20
.code
main PROC
top:
    cmp ebx, val1
    ja next             ;false? exit loop
    add ebx, 5          ;body of loop
    dec val1
    jmp top             ;repeat the loop
next:
    exit
main ENDP
END main
