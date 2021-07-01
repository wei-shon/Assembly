TITLE Homework3		(HW3.asm)
INCLUDE Irvine32.inc

CountMatches PROTO,
	source: PTR BYTE,		;source's address
	target: PTR BYTE,		;target's address
	lengthofarray: DWORD	;the tength of array
main EQU start@
.data
Array1 SDWORD 2,  4, -3, -9, 7,  1,  8	;first array
Array2 SDWORD 2, -3,  6,  0, 7,  8,  5	;second array
matches BYTE " matches",0				;in order to print "matches" on the cmd so that we should have this

.code 
main PROC
	INVOKE CountMatches,	;use this to call function
		OFFSET Array1,		;push address into source
		OFFSET Array2,		;push address into target
		LENGTHOF Array2		;put the tength of array into lengthofarray
	mov edx	,OFFSET matches ;in order to print so that we push "matches" into edx
	Call WriteInt			;print the result of CountMatches
	Call WriteString		;print "matches"
	Call CrLf				;chage row
	Call WaitMsg			;push any ket to continue
	exit
main ENDP

CountMatches PROC,			;main function
	source:PTR BYTE,		;source string
	target:PTR BYTE,		;target string
	lengthofarray: DWORD	;lengthofarray for loop
	
	mov bl , 0				; to count how many times does the same number appear
	mov ecx , lengthofarray	;lengthofarray is times that we want to do
	mov esi , source		;make esi point to first of source(Array1)
	mov edi , target		;make edi point to first of source(Array2)
	cld						;clear direction flag
L1:
	mov eax , [esi]			;because we ant to use scasd so taht we should move esi into eax to scan 
	scasd					;scan eax and edi. if the same then zero flag set ,farthermore, the edi will plus 4 after scanning
	jnz L2					;if eax!=edi then jump to L2
	inc bl					;if the same then bl+1
L2:
	add esi,4				;since Array1 is DWORD so that the next element is local at [esi]+4 
	loop L1	
	movzx eax , bl			;mov bl into eax because we want to use WriteInt to print 
	stosb					;store eax in the memory
	ret						;go back to the next position in the main
CountMatches ENDP
END main