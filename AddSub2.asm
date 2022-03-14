TITLE Subtract, Version 2         (AddSub2.asm)

; This program subtracts 3 32-bit integers
; and stores the difference in a variable.

INCLUDE Irvine32.inc

.data

	FIBNum    DWORD 30 DUP(0)


.code
main PROC

	mov  FIBNum, 1
	mov  FIBNum+4, 1
	mov  ecx, 28
	mov  ebx, 0
	mov  esi, 0

	mov  eax, 1
	call WriteInt
	call CRLF
	call WriteInt
	call CRLF

L1:
	add  ebx, [FIBNum + 4 + esi]
	add  ebx, [FIBNum + esi]
	mov  FIBNum[8 + esi], ebx
	mov  eax, ebx
	call WriteInt 					; print out
	call CRLF						; \n
	xor  ebx, ebx
	add  esi, 4
	loop L1

	exit
main ENDP
END main