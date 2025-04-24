include irvine32.inc
.data
  intArr SWORD 0,0,0,150,120,35,-12,66,4,0
  msg1 BYTE "1st non zero integer is : ",0
  msg2 BYTE "no non-zero integer", 0
.code
main PROC
  mov ecx, 10
  mov esi, 0
findNonZero:
  movsx eax, intArr[esi]
  cmp eax, 0
  je notFound
  mov edx, OFFSET msg1
  call WriteString
  call WriteInt
  jmp endprog
notFound:
  add esi, 2
  loop findNonZero
  mov edx, OFFSET msg2
  call WriteString
endprog:
exit
main ENDP
END main
