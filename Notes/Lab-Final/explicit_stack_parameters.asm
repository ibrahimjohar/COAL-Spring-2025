;explicit stack parameters
;pass by values
include irvine32.inc
.data
    var1 DWORD 5
    var2 DWORD 6

    y_param EQU [ebp+12]
    x_param EQU [ebp+8]
.code
main PROC
    push var2
    push var1
    
    call Addtwo
    call WriteDec
    exit
main ENDP

AddTwo PROC 
    push ebp
    mov ebp, esp
    mov eax, y_param
    add eax, x_param
    pop ebp
    ret
AddTwo ENDP
END main

;[           ]
;[     6     ]    [EBP+12]
;[     5     ]    [EBP+8] 
;[return add.]    [EBP+4] 
;[    EBP    ]    <---  EBP, ESP


