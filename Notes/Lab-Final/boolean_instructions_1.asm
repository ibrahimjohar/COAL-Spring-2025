include irvine32.inc
.data

.code
main PROC
    mov al, 10101110b       ;clear only bit 3
    and al, 11110110b       ;AL = 10100110

    mov al, 11100011b       ;set bit 2
    or al,  00000100b       ;AL = 11100111

    mov al, 10110101b       ;5 bit means odd parity
    xor al, 0               ;PF = 0

    mov al, 10100101b       ;4 bits mean even parity
    xor al, 0               ;PF = 1

    mov al, 11110000b       
    not al                  ;AL=00001111b

    mov al,  00100101b       
    test al, 00001001b      ;ZF = 0

    mov al,  00100101b
    test al, 00001000b      ;ZF = 1

    call DumpRegs

    exit
main ENDP
END main
