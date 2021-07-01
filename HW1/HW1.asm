TITLE HomeWork1			(HW1.asm)
INCLUDE Irvine32.inc

main 			EQU start@0 
.data
MyID   DWORD ?
Digit0 BYTE 1
Digit1 BYTE 5
Digit2 BYTE 3
Digit3 BYTE 7

.code		
main PROC
	
	
	movzx eax , Digit0	
	movzx ebx , Digit1
	movzx ecx , Digit2
	movzx edx , Digit3
	
	shl eax , 8		;take eax forward two digit in Hexadecimal 
	add eax , ebx	;add ebx into eax
	shl eax , 8		;take eax forward two digit in Hexadecimal 
	add eax , ecx	;add ecx into eax
	shl eax , 8		;take eax forward two digit in Hexadecimal 
	add eax, edx	;add edx into eax
	mov MyID , eax	;MyID = eax 

	exit
main ENDP
END main