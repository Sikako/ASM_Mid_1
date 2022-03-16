TITLE Subtract, Version 2         (Reverse.asm)

; Title:Reverse a string with loop
; Subject:System Engineering
; Author:Sikako

INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
    ExitProcess PROTO,dwExitCode:DWORD

.data

	Source BYTE "This is the source string",0
	Target BYTE SIZEOF source DUP('#')


.code
	main PROC
		mov  ecx, SIZEOF Source
		mov  esi, OFFSET Source
		
	; store strings in stack

	L1:
		mov  eax, [esi]
		push eax					; push into stack
		inc  esi					
		loop L1

		mov ecx, SiZEOF Target
		mov esi, OFFSET Target		; point to Target

	; pop strings reversely

	L2:
		pop eax
		mov [esi], al
		call WriteChar
		inc esi
		loop L2



		exit
	main ENDP
	END main