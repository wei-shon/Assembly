TITLE HomeWork1			(HW2.asm)
INCLUDE Irvine32.inc

main 			EQU start@0
.data

ChStrs	BYTE "  ***** "
		BYTE "  *   * "
		BYTE "  *   * "
		BYTE "  *   * "
		BYTE "      * "
		BYTE "      * "
		BYTE "      * "
		BYTE "      * "
BitStrs BYTE 8 dup(?)

.code		
change PROC uses ecx
	xor ecx ,ecx
	mov ecx , 8h
L2:
	xor ebx, ebx
	shl ebx ,1		;put it here because in the last round we don't want the ebx shl again 
	mov al , [esi] 
	cmp al , 21h
	jb L3 
	mov al, 31h
	jmp L4
	
L3:
	
	mov al, 30h
	
L4:
	call  WriteChar
	inc esi
	movzx ebx , al
	mov [edi] , al
	inc edi
	loop L2
	call  Crlf
	ret
change ENDP

main PROC
	mov ecx ,8
	mov edi ,OFFSET BitStrs
	mov esi ,OFFSET ChStrs
L1:
	CALL change
	loop L1

exit
main ENDP
END main