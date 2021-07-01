TITLE HomeWork1			(HW2.asm)
INCLUDE Irvine32.inc

main 			EQU start@0
.data

ChStrs1	BYTE "  ***** "
ChStrs2	BYTE "  *   * "
ChStrs3	BYTE "  *   * "
ChStrs4	BYTE "  *   * "
ChStrs5	BYTE "      * "
ChStrs6	BYTE "      * "
ChStrs7	BYTE "      * "
ChStrs8	BYTE "      * "
BitStrs BYTE 8 dup(?)

.code		
change PROC uses ecx
	xor ecx ,ecx
	mov ecx , 8h
L9:
	xor ebx, ebx
	shl ebx ,1		;put it here because in the last round we don't want the ebx shl again 
	mov al , [esi] 
	cmp al , 21h
	jb L10 
	mov al, 31h
	jmp L11
	
L10:
	
	mov al, 30h
	
L11:
	call  WriteChar
	inc esi
	movzx ebx , al
	loop L9
	call  Crlf 
	ret
change ENDP

main PROC
	
	mov esi ,OFFSET ChStrs1
	CALL change
	mov esi ,OFFSET ChStrs2
	CALL change
	mov esi ,OFFSET ChStrs3
	CALL change
	mov esi ,OFFSET ChStrs4
	CALL change
	mov esi ,OFFSET ChStrs5
	CALL change
	mov esi ,OFFSET ChStrs6
	CALL change
	mov esi ,OFFSET ChStrs7
	CALL change
	mov esi ,OFFSET ChStrs8
	CALL change

	


exit
main ENDP
END main