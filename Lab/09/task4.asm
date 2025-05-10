include irvine32.inc

.data
prompt      BYTE "Enter number: ",0
notPrimeMsg BYTE " is not prime",0
isPrimeMsg  BYTE " is prime",0
allPrimeMsg BYTE "All numbers are prime!",0Dh,0Ah,0
largestMsg  BYTE "Largest prime is: ",0
numbers     DWORD 4 DUP(?)      
allPrimes   BYTE 1              ; 1=all prime, 0=not all prime

.code
main PROC
    mov esi, OFFSET numbers
    mov ecx, 4

input_loop:
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov [esi], eax
    add esi, 4
    loop input_loop

    mov esi, OFFSET numbers
    mov ecx, 4

check_primes:
    mov eax, [esi]
    call CheckPrime
    cmp eax, 1
    je valid_prime

    mov allPrimes, 0
    mov eax, [esi]
    call WriteDec
    mov edx, OFFSET notPrimeMsg
    call WriteString
    call Crlf
    jmp next_iteration

valid_prime:
    mov eax, [esi]
    call WriteDec
    mov edx, OFFSET isPrimeMsg
    call WriteString
    call Crlf

next_iteration:
    add esi, 4
    loop check_primes

    cmp allPrimes, 1
    jne exit_program

    call Crlf
    mov edx, OFFSET allPrimeMsg
    call WriteString
    mov edx, OFFSET largestMsg
    call WriteString
    call LargestPrime
    call WriteDec
    call Crlf

exit_program:
    exit
main ENDP


CheckPrime PROC
    push ebx
    push ecx
    push edx

    cmp eax, 2
    jl  not_prime    
    
    mov ebx, eax    
    mov ecx, 2      

check_loop:
    mov eax, ebx    
    xor edx, edx
    div ecx
    cmp edx, 0
    je  not_prime   
    
    inc ecx
    mov eax, ecx
    mul ecx
    cmp eax, ebx    
    jle check_loop

is_prime:
    pop edx
    pop ecx
    pop ebx
    mov eax, 1
    ret

not_prime:
    pop edx
    pop ecx
    pop ebx
    mov eax, 0
    ret
CheckPrime ENDP


LargestPrime PROC
    push esi
    push ecx
    
    mov esi, OFFSET numbers
    mov eax, [esi]      
    mov ecx, 3          

compare_loop:
    add esi, 4
    mov ebx, [esi]
    cmp ebx, eax
    jle no_update
    mov eax, ebx

no_update:
    loop compare_loop

    pop ecx
    pop esi
    ret
LargestPrime ENDP

END main
