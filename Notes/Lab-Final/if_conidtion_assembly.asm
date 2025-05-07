;When implementing the logical AND operator in compound expression, if the
;first expression is false, the second expression is skipped.

;if (al > bl) AND (bl > cl)
;   X = 1;

include irvine32.inc
.data
.code
main PROC
    cmp al, bl      ;first exp
    ja L1           
    jmp next

L1:
    cmp bl, cl      ;second exp
    ja L2
    jmp next

L2:                 ;both exp are true
    mov X, 1

next:
    exit
main ENDP
END main
