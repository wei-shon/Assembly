INCLUDE Irvine32.inc
INCLUDE Macros.inc
time=15

.data
captionW BYTE "You lose",0
warningMsg BYTE "GAMEOVER"
FIRST BYTE ?
SECOND BYTE ?
THIRD BYTE ?
randVal DWORD ?
xyPosition1 COORD <10,32>
xyPosition2 COORD <10,33>
xyPosition3 COORD <10,34>
xyPosition4 COORD <10,35>
xyPosition5 COORD <10,36>
xyPosition6 COORD <10,37>
xyPosition7 COORD <10,38>
xyPosition8 COORD <10,39>
xyPosition9 COORD <10,40>
xyPosition10 COORD <10,41>
xyPosition11 COORD <10,42>
xyPosition12 COORD <10,43>
xyPosition13 COORD <10,44>
xyPosition14 COORD <10,45>
xyPosition15 COORD <10,46>
xyPosition16 COORD <10,47>
xyPosition17 COORD <10,48>
xyPosition18 COORD <10,49>
xyPosition19 COORD <10,50>
xyPosition20 COORD <10,51>
xyPosition21 COORD <10,52>
xyPosition22 COORD <10,53>
xyPosition23 COORD <10,54>
xyPosition24 COORD <10,55>
xyPosition25 COORD <10,56>
spacePosition1 COORD <10,?> 
spacePosition2 COORD <10,?> 
spacePosition3 COORD <10,?> 
spacePosition4 COORD <10,?> 
spacePosition5 COORD <10,?> 
spacePosition6 COORD <10,?> 
spacePosition7 COORD <10,?> 
spacePosition8 COORD <10,?> 
spacePosition9 COORD <10,?> 
spacePosition10 COORD <10,?> 
spacePosition11 COORD <10,?> 
spacePosition12 COORD <10,?> 
spacePosition13 COORD <10,?> 
spacePosition14 COORD <10,?> 
spacePosition15 COORD <10,?> 
spacePosition16 COORD <10,?> 
spacePosition17 COORD <10,?> 
spacePosition18 COORD <10,?> 
spacePosition19 COORD <10,?> 
spacePosition20 COORD <10,?> 
spacePosition21 COORD <10,?> 
spacePosition22 COORD <10,?> 
spacePosition23 COORD <10,?> 
spacePosition24 COORD <10,?> 
spacePosition25 COORD <10,?> 

di1 BYTE 23 DUP(0DBh) ;23
di2 BYTE 24 DUP(0DBh);24
di3 BYTE 25 DUP(0DBh);25
di4 BYTE 25 DUP(0DBh);25
di5 BYTE 25 DUP(0DBh);25
di6 BYTE 27 DUP(0DBh);27
di7 BYTE 28 DUP(0DBh);28
di8 BYTE 30 DUP(0DBh);30
di9 BYTE 30 DUP(0DBh);30
di10 BYTE 31 DUP(0DBh);31
di11 BYTE 31 DUP(0DBh);31
di12 BYTE 31 DUP(0DBh);31
di13 BYTE 30 DUP(0DBh);30
di14 BYTE 29 DUP(0DBh);29
di15 BYTE 27 DUP(0DBh);27
di16 BYTE 23 DUP(0DBh);23
di17 BYTE 24 DUP(0DBh);24
di18 BYTE 25 DUP(0DBh);25
di19 BYTE 23 DUP(0DBh);23
di20 BYTE 18 DUP(0DBh);18
di21 BYTE 17 DUP(0DBh);17
di22 BYTE 17 DUP(0DBh);17
di23 BYTE 19 DUP(0DBh);19
di24 BYTE 20 DUP(0DBh);20
di25 BYTE 21 DUP(0DBh);21

space1 BYTE 23 DUP(20h) ;23
space2 BYTE 24 DUP(20h);24
space3 BYTE 25 DUP(20h);25
space4 BYTE 25 DUP(20h);25
space5 BYTE 25 DUP(20h);25
space6 BYTE 27 DUP(20h);27
space7 BYTE 28 DUP(20h);28
space8 BYTE 30 DUP(20h);30
space9 BYTE 30 DUP(20h);30
space10 BYTE 31 DUP(20h);31
space11 BYTE 31 DUP(20h);31
space12 BYTE 31 DUP(20h);31
space13 BYTE 30 DUP(20h);30
space14 BYTE 29 DUP(20h);29
space15 BYTE 27 DUP(20h);27
space16 BYTE 23 DUP(20h);23
space17 BYTE 24 DUP(20h);24
space18 BYTE 25 DUP(20h);25
space19 BYTE 23 DUP(20h);23
space20 BYTE 18 DUP(20h);18
space21 BYTE 17 DUP(20h);17
space22 BYTE 17 DUP(20h);17
space23 BYTE 19 DUP(20h);19
space24 BYTE 20 DUP(20h);20
space25 BYTE 21 DUP(20h);21

attributes1 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Fh,0Ah,0Ah,0Ah
attributes2 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes3 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah
attributes4 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Ah,0Ah,0Fh,0Ah,0Ah,0Fh,0Fh,0Ah
attributes5 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Ah,0Fh,0Ah,0Ah,0Fh,0Fh,0Ah
attributes6 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah
attributes7 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes8 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes9 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes10 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes11 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes12 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes13 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes14 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes15 WORD 0Fh,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes16 WORD 0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah
attributes17 WORD 0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Ah,0Fh,0Fh,0Ah,0Ah
attributes18 WORD 0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes19 WORD 0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes20 WORD 0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah
attributes21 WORD 0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah
attributes22 WORD 0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah
attributes23 WORD 0Fh,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes24 WORD 0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
attributes25 WORD 0Fh,0Fh,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah,0Ah
;dinasour
mushroomPosition1 COORD <180,45>
mushroomPosition2 COORD <180,46>
mushroomPosition3 COORD <180,47>
mushroomPosition4 COORD <180,48>
mushroomPosition5 COORD <180,49>
mushroomPosition6 COORD <180,50>
mushroomPosition7 COORD <180,51>
mushroomPosition8 COORD <180,52>
mushroomPosition9 COORD <180,53>
mushroomPosition10 COORD <180,54>
mushroomPosition11 COORD <180,55>
mushroomPosition12 COORD <180,56>


mushroomspace1 COORD <180,45>
mushroomspace2 COORD <180,46>
mushroomspace3 COORD <180,47>
mushroomspace4 COORD <180,48>
mushroomspace5 COORD <180,49>
mushroomspace6 COORD <180,50>
mushroomspace7 COORD <180,51>
mushroomspace8 COORD <180,52>
mushroomspace9 COORD <180,53>
mushroomspace10 COORD <180,54>
mushroomspace11 COORD <180,55>
mushroomspace12 COORD <180,56>

mushroomPosition13 COORD <180,19>
mushroomPosition14 COORD <180,20>
mushroomPosition15 COORD <180,21>
mushroomPosition16 COORD <180,22>
mushroomPosition17 COORD <180,23>
mushroomPosition18 COORD <180,24>
mushroomPosition19 COORD <180,25>
mushroomPosition20 COORD <180,26>
mushroomPosition21 COORD <180,27>
mushroomPosition22 COORD <180,28>
mushroomPosition23 COORD <180,29>
mushroomPosition24 COORD <180,30>


mushroomspace13 COORD <180,19>
mushroomspace14 COORD <180,20>
mushroomspace15 COORD <180,21>
mushroomspace16 COORD <180,22>
mushroomspace17 COORD <180,23>
mushroomspace18 COORD <180,24>
mushroomspace19 COORD <180,25>
mushroomspace20 COORD <180,26>
mushroomspace21 COORD <180,27>
mushroomspace22 COORD <180,28>
mushroomspace23 COORD <180,29>
mushroomspace24 COORD <180,30>

mushroomPosition25 COORD <180,71>
mushroomPosition26 COORD <180,72>
mushroomPosition27 COORD <180,73>
mushroomPosition28 COORD <180,74>
mushroomPosition29 COORD <180,75>
mushroomPosition30 COORD <180,76>
mushroomPosition31 COORD <180,77>
mushroomPosition32 COORD <180,78>
mushroomPosition33 COORD <180,79>
mushroomPosition34 COORD <180,80>
mushroomPosition35 COORD <180,81>
mushroomPosition36 COORD <180,82>


mushroomspace25 COORD <180,71>
mushroomspace26 COORD <180,72>
mushroomspace27 COORD <180,73>
mushroomspace28 COORD <180,74>
mushroomspace29 COORD <180,75>
mushroomspace30 COORD <180,76>
mushroomspace31 COORD <180,77>
mushroomspace32 COORD <180,78>
mushroomspace33 COORD <180,79>
mushroomspace34 COORD <180,80>
mushroomspace35 COORD <180,81>
mushroomspace36 COORD <180,82>


mushroom1 BYTE 12 DUP(0DBh);12
mushroom2 BYTE 13 DUP(0DBh);13
mushroom3 BYTE 14 DUP(0DBh);14
mushroom4 BYTE 15 DUP(0DBh);15
mushroom5 BYTE 16 DUP(0DBh);16
mushroom6 BYTE 16 DUP(0DBh);16
mushroom7 BYTE 10 DUP(0DBh);10
mushroom8 BYTE 10 DUP(0DBh);10
mushroom9 BYTE 11 DUP(0DBh);11
mushroom10 BYTE 11 DUP(0DBh);11
mushroom11 BYTE 12 DUP(0DBh);12
mushroom12 BYTE 12 DUP(0DBh);12

mushrooms1 BYTE 30 DUP(20h);12
mushrooms2 BYTE 30 DUP(20h);13
mushrooms3 BYTE 30 DUP(20h);14
mushrooms4 BYTE 30 DUP(20h);15
mushrooms5 BYTE 30 DUP(20h);16
mushrooms6 BYTE 30 DUP(20h);16
mushrooms7 BYTE 30 DUP(20h);10
mushrooms8 BYTE 30 DUP(20h);10
mushrooms9 BYTE 30 DUP(20h);11
mushrooms10 BYTE 30 DUP(20h);11
mushrooms11 BYTE 30 DUP(20h);12
mushrooms12 BYTE 30 DUP(20h);12

mushroomattributes1 WORD 0h,0h,0h,0h,4h,4h,4h,4h,4h,4h,4h,4h
mushroomattributes2 WORD 0h,0h,0h,4h,4h,4h,4h,4h,4h,4h,0Fh,4h,4h
mushroomattributes3 WORD 0h,0h,4h,4h,4h,0Fh,4h,4h,4h,4h,4h,4h,4h,4h
mushroomattributes4 WORD 0h,4h,4h,4h,4h,4h,4h,4h,4h,4h,4h,4h,4h,4h,4h
mushroomattributes5 WORD 4h,4h,0Fh,4h,4h,4h,4h,4h,4h,0Fh,4h,4h,4h,0Fh,4h,4h
mushroomattributes6 WORD 4h,4h,4h,4h,4h,4h,8h,8h,8h,8h,4h,4h,4h,4h,4h,4h
mushroomattributes7 WORD 0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
mushroomattributes8 WORD 0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
mushroomattributes9 WORD 0h,0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
mushroomattributes10 WORD 0h,0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
mushroomattributes11 WORD 0h,0h,0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
mushroomattributes12 WORD 0h,0h,0h,0h,0h,0h,0h,0h,8h,8h,8h,8h
;mushroom

titleStr BYTE "small dinosaur",0




floor BYTE 180 DUP("_")
TOPFLOOR COORD<10,31>
MIDFLOOR COORD<10,57>
BUTTOMFLOOR COORD<10,83>
outputHandle DWORD 0
bytesWritten DWORD 0
count DWORD 0
cellsWritten DWORD ?
floorattributes WORD 180 DUP(0F0h)


main EQU start@0
.code

Createmushroom PROC
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes1,
	12,
	mushroomPosition1,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom1,   
	12,   
	mushroomPosition1,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes2,
	13,
	mushroomPosition2,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom2,   
	13,   
	mushroomPosition2,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes3,
	14,
	mushroomPosition3,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom3,   
	14,   
	mushroomPosition3,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes4,
	15,
	mushroomPosition4,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom4,   
	15,   
	mushroomPosition4,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes5,
	16,
	mushroomPosition5,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom5,   
	16,   
	mushroomPosition5,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes6,
	16,
	mushroomPosition6,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom6,   
	16,   
	mushroomPosition6,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes7,
	10,
	mushroomPosition7,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom7,   
	10,   
	mushroomPosition7,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes8,
	10,
	mushroomPosition8,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom8,   
	10,   
	mushroomPosition8,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes9,
	11,
	mushroomPosition9,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom9,   
	11,   
	mushroomPosition9,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes10,
	11,
	mushroomPosition10,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom10,   
	11,   
	mushroomPosition10,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes11,
	12,
	mushroomPosition11,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom11,   
	12,   
	mushroomPosition11,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes12,
	12,
	mushroomPosition12,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom12,   
	12,   
	mushroomPosition12,   
	ADDR count

	ret
Createmushroom ENDP

Createmushroomspace PROC
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms1,   
	30,   
	mushroomspace1,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms2,   
	30,   
	mushroomspace2,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms3,   
	30,   
	mushroomspace3,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms4,   
	30,   
	mushroomspace4,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms5,   
	30,   
	mushroomspace5,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms6,   
	30,   
	mushroomspace6,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms7,   
	30,   
	mushroomspace7,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms8,   
	30,   
	mushroomspace8,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms9,   
	30,   
	mushroomspace9,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms10,   
	30,   
	mushroomspace10,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms11,   
	30,   
	mushroomspace11,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms12,   
	30,   
	mushroomspace12,   
	ADDR count
	ret
Createmushroomspace ENDP
Createmushroom2 PROC
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes1,
	12,
	mushroomPosition13,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom1,   
	12,   
	mushroomPosition13,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes2,
	13,
	mushroomPosition14,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom2,   
	13,   
	mushroomPosition14,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes3,
	14,
	mushroomPosition15,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom3,   
	14,   
	mushroomPosition15,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes4,
	15,
	mushroomPosition16,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom4,   
	15,   
	mushroomPosition16,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes5,
	16,
	mushroomPosition17,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom5,   
	16,   
	mushroomPosition17,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes6,
	16,
	mushroomPosition18,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom6,   
	16,   
	mushroomPosition18,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes7,
	10,
	mushroomPosition19,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom7,   
	10,   
	mushroomPosition19,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes8,
	10,
	mushroomPosition20,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom8,   
	10,   
	mushroomPosition20,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes9,
	11,
	mushroomPosition21,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom9,   
	11,   
	mushroomPosition21,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes10,
	11,
	mushroomPosition22,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom10,   
	11,   
	mushroomPosition22,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes11,
	12,
	mushroomPosition23,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom11,   
	12,   
	mushroomPosition23,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes12,
	12,
	mushroomPosition24,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom12,   
	12,   
	mushroomPosition24,   
	ADDR count

	ret
Createmushroom2 ENDP

Createmushroomspace2 PROC
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms1,   
	30,   
	mushroomspace13,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms2,   
	30,   
	mushroomspace14,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms3,   
	30,   
	mushroomspace15,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms4,   
	30,   
	mushroomspace16,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms5,   
	30,   
	mushroomspace17,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms6,   
	30,   
	mushroomspace18,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms7,   
	30,   
	mushroomspace19,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms8,   
	30,   
	mushroomspace20,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms9,   
	30,   
	mushroomspace21,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms10,   
	30,   
	mushroomspace22,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms11,   
	30,   
	mushroomspace23,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms12,   
	30,   
	mushroomspace24,   
	ADDR count
	ret
Createmushroomspace2 ENDP

Createmushroom3 PROC
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes1,
	12,
	mushroomPosition25,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom1,   
	12,   
	mushroomPosition25,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes2,
	13,
	mushroomPosition26,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom2,   
	13,   
	mushroomPosition26,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes3,
	14,
	mushroomPosition27,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom3,   
	14,   
	mushroomPosition27,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes4,
	15,
	mushroomPosition28,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom4,   
	15,   
	mushroomPosition28,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes5,
	16,
	mushroomPosition29,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom5,   
	16,   
	mushroomPosition29,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes6,
	16,
	mushroomPosition30,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom6,   
	16,   
	mushroomPosition30,   
	ADDR count 
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes7,
	10,
	mushroomPosition31,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom7,   
	10,   
	mushroomPosition31,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes8,
	10,
	mushroomPosition32,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom8,   
	10,   
	mushroomPosition32,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes9,
	11,
	mushroomPosition33,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom9,   
	11,   
	mushroomPosition33,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes10,
	11,
	mushroomPosition34,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom10,   
	11,   
	mushroomPosition34,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes11,
	12,
	mushroomPosition35,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom11,   
	12,   
	mushroomPosition35,   
	ADDR count
	INVOKE WriteConsoleOutputAttribute,
	outputHandle,
	ADDR mushroomattributes12,
	12,
	mushroomPosition36,
	ADDR cellsWritten
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushroom12,   
	12,   
	mushroomPosition36,   
	ADDR count

	ret
Createmushroom3 ENDP

Createmushroomspace3 PROC
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms1,   
	30,   
	mushroomspace25,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms2,   
	30,   
	mushroomspace26,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms3,   
	30,   
	mushroomspace27,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms4,   
	30,   
	mushroomspace28,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms5,   
	30,   
	mushroomspace29,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms6,   
	30,   
	mushroomspace30,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms7,   
	30,   
	mushroomspace31,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms8,   
	30,   
	mushroomspace32,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms9,   
	30,   
	mushroomspace33,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms10,   
	30,   
	mushroomspace34,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms11,   
	30,   
	mushroomspace35,   
	ADDR count
	INVOKE WriteConsoleOutputCharacter,
	outputHandle,   
	ADDR mushrooms12,   
	30,   
	mushroomspace36,   
	ADDR count
	ret

Createmushroomspace3 ENDP
CreateFloor PROC
	INVOKE GetStdHandle, STD_OUTPUT_HANDLE
	mov outputHandle,eax	
	call ClrScr
	INVOKE SetConsoleTitle, 
		ADDR titleStr    
	INVOKE WriteConsoleOutputAttribute,
		outputHandle,
		ADDR floorattributes,
		180,
		TOPFLOOR,
		ADDR cellsWritten
    INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR floor,   
		180,   
		TOPFLOOR,   
		ADDR count
	;The TOP floor
	INVOKE WriteConsoleOutputAttribute,
		outputHandle,
		ADDR floorattributes,
		180,
		MIDFLOOR,
		ADDR cellsWritten
    INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR floor,   
		180,   
		MIDFLOOR,   
		ADDR count  
	;The MID floor
	INVOKE WriteConsoleOutputAttribute,
		outputHandle,
		ADDR floorattributes,
		180,
		BUTTOMFLOOR,
		ADDR cellsWritten
    INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR floor,   
		180,   
		BUTTOMFLOOR,   
		ADDR count  
	;The BUTTOM floor
CreateFloor ENDP


CreateDinosaur PROC
	INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes1,
			23,
			xyPosition1,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di1,   
			23,   
			xyPosition1,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes2,
			24,
			xyPosition2,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di2,   
			24,   
			xyPosition2,   
			ADDR count 
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes3,
			25,
			xyPosition3,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di3,   
			25,   
			xyPosition3,   
			ADDR count 
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes4,
			25,
			xyPosition4,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di4,   
			25,   
			xyPosition4,   
			ADDR count 
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes5,
			25,
			xyPosition5,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di5,   
			25,   
			xyPosition5,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes6,
			27,
			xyPosition6,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di6,   
			27,   
			xyPosition6,   
			ADDR count 
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes7,
			28,
			xyPosition7,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di7,   
			28,   
			xyPosition7,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes8,
			30,
			xyPosition8,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di8,   
			30,   
			xyPosition8,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes9,
			30,
			xyPosition9,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di9,   
			30,   
			xyPosition9,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes10,
			31,
			xyPosition10,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di10,   
			31,   
			xyPosition10,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes11,
			31,
			xyPosition11,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di11,   
			31,   
			xyPosition11,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes12,
			31,
			xyPosition12,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di12,   
			31,   
			xyPosition12,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes13,
			30,
			xyPosition13,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di13,   
			30,   
			xyPosition13,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes14,
			29,
			xyPosition14,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di14,   
			29,   
			xyPosition14,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes15,
			27,
			xyPosition15,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di15,   
			27,   
			xyPosition15,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes16,
			23,
			xyPosition16,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di16,   
			23,   
			xyPosition16,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes17,
			24,
			xyPosition17,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di17,   
			24,   
			xyPosition17,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes18,
			25,
			xyPosition18,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di18,   
			25,   
			xyPosition18,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes19,
			23,
			xyPosition19,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di19,   
			23,   
			xyPosition19,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes20,
			18,
			xyPosition20,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di20,   
			18,   
			xyPosition20,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes21,
			17,
			xyPosition21,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di21,   
			17,   
			xyPosition21,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes22,
			17,
			xyPosition22,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di22,   
			17,   
			xyPosition22,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes23,
			19,
			xyPosition23,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di23,   
			19,   
			xyPosition23,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes24,
			20,
			xyPosition24,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di24,   
			20,   
			xyPosition24,   
			ADDR count
		INVOKE WriteConsoleOutputAttribute,
			outputHandle,
			ADDR attributes25,
			21,
			xyPosition25,
			ADDR cellsWritten
		INVOKE WriteConsoleOutputCharacter,
			outputHandle,   
			ADDR di25,   
			21,   
			xyPosition25,   
			ADDR count
	   ;Let the change position be white
	 ret
CreateDinosaur ENDP

CreateSpace PROC
	mov ax,xyPosition1.y
	mov spacePosition1.y,ax
	mov ax,xyPosition2.y
	mov spacePosition2.y,ax
	mov ax,xyPosition3.y
	mov spacePosition3.y,ax
	mov ax,xyPosition4.y
	mov spacePosition4.y,ax
	mov ax,xyPosition5.y
	mov spacePosition5.y,ax
	mov ax,xyPosition6.y
	mov spacePosition6.y,ax
	mov ax,xyPosition7.y
	mov spacePosition7.y,ax
	mov ax,xyPosition8.y
	mov spacePosition8.y,ax
	mov ax,xyPosition9.y
	mov spacePosition9.y,ax
	mov ax,xyPosition10.y
	mov spacePosition10.y,ax
	mov ax,xyPosition11.y
	mov spacePosition11.y,ax
	mov ax,xyPosition12.y
	mov spacePosition12.y,ax
	mov ax,xyPosition13.y
	mov spacePosition13.y,ax
	mov ax,xyPosition14.y
	mov spacePosition14.y,ax
	mov ax,xyPosition15.y
	mov spacePosition15.y,ax
	mov ax,xyPosition16.y
	mov spacePosition16.y,ax
	mov ax,xyPosition17.y
	mov spacePosition17.y,ax
	mov ax,xyPosition18.y
	mov spacePosition18.y,ax
	mov ax,xyPosition19.y
	mov spacePosition19.y,ax
	mov ax,xyPosition20.y
	mov spacePosition20.y,ax
	mov ax,xyPosition21.y
	mov spacePosition21.y,ax
	mov ax,xyPosition22.y
	mov spacePosition22.y,ax
	mov ax,xyPosition23.y
	mov spacePosition23.y,ax
	mov ax,xyPosition24.y
	mov spacePosition24.y,ax
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space1,   
		23,   
		spacePosition1,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space2,   
		24,   
		spacePosition2,   
		ADDR count 
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space3,   
		25,   
		spacePosition3,   
		ADDR count 
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space4,   
		25,   
		spacePosition4,   
		ADDR count 
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space5,   
		25,   
		spacePosition5,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space6,   
		27,   
		spacePosition6,   
		ADDR count 
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space7,   
		28,   
		spacePosition7,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space8,   
		30,   
		spacePosition8,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space9,   
		30,   
		spacePosition9,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space10,   
		31,   
		spacePosition10,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space11,   
		31,   
		spacePosition11,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space12,   
		31,   
		spacePosition12,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space13,   
		30,   
		spacePosition13,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space14,   
		29,   
		spacePosition14,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space15,   
		27,   
		spacePosition15,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space16,   
		23,   
		spacePosition16,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space17,   
		24,   
		spacePosition17,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space18,   
		25,   
		spacePosition18,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space19,   
		23,   
		spacePosition19,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space20,   
		18,   
		spacePosition20,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space21,   
		17,   
		spacePosition21,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space22,   
		17,   
		spacePosition22,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space23,   
		19,   
		spacePosition23,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space24,   
		20,   
		spacePosition24,   
		ADDR count
	INVOKE WriteConsoleOutputCharacter,
		outputHandle,   
		ADDR space25,   
		21,   
		spacePosition25,   
		ADDR count
	ret
CreateSpace ENDP

;---------------------------------------------------------------------------------------------------------
CreateObstacle PROC	 
	random:
		call Randomize
		mov eax , 3
		call RandomRange
		mov randVal,eax
	START:
		.IF randVal==0 
			call Createmushroomspace
			call Createmushroom
			call Createmushroomspace3
			call Createmushroom3
		.ENDIF
		.IF randVal==1
			call Createmushroomspace2
			call Createmushroom2
			call Createmushroomspace3
			call Createmushroom3
		.ENDIF
		.IF randVal==2
			call Createmushroomspace
			call Createmushroom
			call Createmushroomspace2
			call Createmushroom2
		.ENDIF

		INVOKE Sleep, time	
		sub mushroomPosition1.x,1
		sub mushroomPosition2.x,1
		sub mushroomPosition3.x,1
		sub mushroomPosition4.x,1
		sub mushroomPosition5.x,1
		sub mushroomPosition6.x,1
		sub mushroomPosition7.x,1
		sub mushroomPosition8.x,1
		sub mushroomPosition9.x,1
		sub mushroomPosition10.x,1
		sub mushroomPosition11.x,1
		sub mushroomPosition12.x,1
		sub mushroomPosition13.x,1
		sub mushroomPosition14.x,1
		sub mushroomPosition15.x,1
		sub mushroomPosition16.x,1
		sub mushroomPosition17.x,1
		sub mushroomPosition18.x,1
		sub mushroomPosition19.x,1
		sub mushroomPosition20.x,1
		sub mushroomPosition21.x,1
		sub mushroomPosition22.x,1
		sub mushroomPosition23.x,1
		sub mushroomPosition24.x,1
		sub mushroomPosition25.x,1
		sub mushroomPosition26.x,1
		sub mushroomPosition27.x,1
		sub mushroomPosition28.x,1
		sub mushroomPosition29.x,1
		sub mushroomPosition30.x,1
		sub mushroomPosition31.x,1
		sub mushroomPosition32.x,1
		sub mushroomPosition33.x,1
		sub mushroomPosition34.x,1
		sub mushroomPosition35.x,1
		sub mushroomPosition36.x,1
		sub mushroomspace1.x,1
		sub mushroomspace2.x,1
		sub mushroomspace3.x,1
		sub mushroomspace4.x,1
		sub mushroomspace5.x,1
		sub mushroomspace6.x,1
		sub mushroomspace7.x,1
		sub mushroomspace8.x,1
		sub mushroomspace9.x,1
		sub mushroomspace10.x,1
		sub mushroomspace11.x,1
		sub mushroomspace12.x,1
		sub mushroomspace13.x,1
		sub mushroomspace14.x,1
		sub mushroomspace15.x,1
		sub mushroomspace16.x,1
		sub mushroomspace17.x,1
		sub mushroomspace18.x,1
		sub mushroomspace19.x,1
		sub mushroomspace20.x,1
		sub mushroomspace21.x,1
		sub mushroomspace22.x,1
		sub mushroomspace23.x,1
		sub mushroomspace24.x,1
		sub mushroomspace25.x,1
		sub mushroomspace26.x,1
		sub mushroomspace27.x,1
		sub mushroomspace28.x,1
		sub mushroomspace29.x,1
		sub mushroomspace30.x,1
		sub mushroomspace31.x,1
		sub mushroomspace32.x,1
		sub mushroomspace33.x,1
		sub mushroomspace34.x,1
		sub mushroomspace35.x,1
		sub mushroomspace36.x,1	
		.IF mushroomPosition1.x<=34
			call CreateDinosaur
			.IF randVal==0
				mov dx,mushroomPosition12.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
				mov dx,mushroomPosition36.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
			.ENDIF
			.IF randVal==1
				mov dx,mushroomPosition24.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
				mov dx,mushroomPosition36.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
			.ENDIF
			.IF randVal==2
				mov dx,mushroomPosition12.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
				mov dx,mushroomPosition24.y
				.IF xyPosition25.y==dx
					INVOKE MessageBox,NULL,ADDR warningMsg,ADDR captionW,MB_OK+MB_ICONSTOP
					exit
					;game over
				.ENDIF
			.ENDIF
			call ReadKey
			jnz L3
			.IF mushroomPosition1.x>10
				jmp START
			.ENDIF
			sub mushroomspace1.x,1
			sub mushroomspace2.x,1
			sub mushroomspace3.x,1
			sub mushroomspace4.x,1
			sub mushroomspace5.x,1
			sub mushroomspace6.x,1
			sub mushroomspace7.x,1
			sub mushroomspace8.x,1
			sub mushroomspace9.x,1
			sub mushroomspace10.x,1
			sub mushroomspace11.x,1
			sub mushroomspace12.x,1
			sub mushroomspace13.x,1
			sub mushroomspace14.x,1
			sub mushroomspace15.x,1
			sub mushroomspace16.x,1
			sub mushroomspace17.x,1
			sub mushroomspace18.x,1
			sub mushroomspace19.x,1
			sub mushroomspace20.x,1
			sub mushroomspace21.x,1
			sub mushroomspace22.x,1
			sub mushroomspace23.x,1
			sub mushroomspace24.x,1
			sub mushroomspace25.x,1
			sub mushroomspace26.x,1
			sub mushroomspace27.x,1
			sub mushroomspace28.x,1
			sub mushroomspace29.x,1
			sub mushroomspace30.x,1
			sub mushroomspace31.x,1
			sub mushroomspace32.x,1
			sub mushroomspace33.x,1
			sub mushroomspace34.x,1
			sub mushroomspace35.x,1
			sub mushroomspace36.x,1
			.IF randVal==0
				call Createmushroomspace 
				call Createmushroomspace3
			.ENDIF 
			.IF randVal==1
				call Createmushroomspace2
				call Createmushroomspace3
			.ENDIF
			.IF randVal==2
				call Createmushroomspace 
				call Createmushroomspace2
			.ENDIF
			jmp L2
		.ENDIF
		call ReadKey
		jz START
		jnz L3

	L3:	
		.IF ax==4800h;up arrow
			mov ax,xyPosition25.y
			mov spacePosition25.y,ax
			sub xyPosition25.y,26
			.IF xyPosition25.y<30
				add xyPosition25.y,26
				jmp START
			.ENDIF
			call CreateSpace
			call changedonosaurdown
			jmp START
		.ENDIF
		.IF ax==5000h;down arrow
			mov ax,xyPosition25.y
			mov spacePosition25.y,ax
			add xyPosition25.y,26
			.IF xyPosition25.y>82
				sub xyPosition25.y,26
				jmp START
			.ENDIF
			call CreateSpace
			call changedinosaurup
			jmp START
		.ENDIF
		.IF ax == 011Bh ;ESC
			call END_FUNC
		.ENDIF
		jmp START		
	L2:
		mov mushroomPosition1.x,180
		mov mushroomPosition1.y,45
		mov mushroomPosition2.x,180
		mov mushroomPosition2.y,46
		mov mushroomPosition3.x,180
		mov mushroomPosition3.y,47
		mov mushroomPosition4.x,180
		mov mushroomPosition4.y,48
		mov mushroomPosition5.x,180
		mov mushroomPosition5.y,49
		mov mushroomPosition6.x,180
		mov mushroomPosition6.y,50
		mov mushroomPosition7.x,180
		mov mushroomPosition7.y,51
		mov mushroomPosition8.x,180
		mov mushroomPosition8.y,52
		mov mushroomPosition9.x,180
		mov mushroomPosition9.y,53
		mov mushroomPosition10.x,180
		mov mushroomPosition10.y,54
		mov mushroomPosition11.x,180
		mov mushroomPosition11.y,55
		mov mushroomPosition12.x,180
		mov mushroomPosition12.y,56
				mov mushroomPosition13.x,180
				mov mushroomPosition13.y,19
				mov mushroomPosition14.x,180
				mov mushroomPosition14.y,20
				mov mushroomPosition15.x,180
				mov mushroomPosition15.y,21
				mov mushroomPosition16.x,180
				mov mushroomPosition16.y,22
				mov mushroomPosition17.x,180
				mov mushroomPosition17.y,23
				mov mushroomPosition18.x,180
				mov mushroomPosition18.y,24
				mov mushroomPosition19.x,180
				mov mushroomPosition19.y,25
				mov mushroomPosition20.x,180
				mov mushroomPosition20.y,26
				mov mushroomPosition21.x,180
				mov mushroomPosition21.y,27
				mov mushroomPosition22.x,180
				mov mushroomPosition22.y,28
				mov mushroomPosition23.x,180
				mov mushroomPosition23.y,29
				mov mushroomPosition24.x,180
				mov mushroomPosition24.y,30		
			mov mushroomPosition25.x,180
				mov mushroomPosition25.y,71
				mov mushroomPosition26.x,180
				mov mushroomPosition26.y,72
				mov mushroomPosition27.x,180
				mov mushroomPosition27.y,73
				mov mushroomPosition28.x,180
				mov mushroomPosition28.y,74
				mov mushroomPosition29.x,180
				mov mushroomPosition29.y,75
				mov mushroomPosition30.x,180
				mov mushroomPosition30.y,76
				mov mushroomPosition31.x,180
				mov mushroomPosition31.y,77
				mov mushroomPosition32.x,180
				mov mushroomPosition32.y,78
				mov mushroomPosition33.x,180
				mov mushroomPosition33.y,79
				mov mushroomPosition34.x,180
				mov mushroomPosition34.y,80
				mov mushroomPosition35.x,180
				mov mushroomPosition35.y,81
				mov mushroomPosition36.x,180
				mov mushroomPosition36.y,82
		
		mov mushroomspace1.x,180
		mov mushroomspace1.y,45
		mov mushroomspace2.x,180
		mov mushroomspace2.y,46
		mov mushroomspace3.x,180
		mov mushroomspace3.y,47
		mov mushroomspace4.x,180
		mov mushroomspace4.y,48
		mov mushroomspace5.x,180
		mov mushroomspace5.y,49
		mov mushroomspace6.x,180
		mov mushroomspace6.y,50
		mov mushroomspace7.x,180
		mov mushroomspace7.y,51
		mov mushroomspace8.x,180
		mov mushroomspace8.y,52
		mov mushroomspace9.x,180
		mov mushroomspace9.y,53
		mov mushroomspace10.x,180
		mov mushroomspace10.y,54
		mov mushroomspace11.x,180
		mov mushroomspace11.y,55
		mov mushroomspace12.x,180
		mov mushroomspace12.y,56
		mov mushroomspace13.x,180
				mov mushroomspace13.y,19
				mov mushroomspace14.x,180
				mov mushroomspace14.y,20
				mov mushroomspace15.x,180
				mov mushroomspace15.y,21
				mov mushroomspace16.x,180
				mov mushroomspace16.y,22
				mov mushroomspace17.x,180
				mov mushroomspace17.y,23
				mov mushroomspace18.x,180
				mov mushroomspace18.y,24
				mov mushroomspace19.x,180
				mov mushroomspace19.y,25
				mov mushroomspace20.x,180
				mov mushroomspace20.y,26
				mov mushroomspace21.x,180
				mov mushroomspace21.y,27
				mov mushroomspace22.x,180
				mov mushroomspace22.y,28
				mov mushroomspace23.x,180
				mov mushroomspace23.y,29
				mov mushroomspace24.x,180
				mov mushroomspace24.y,30	
		mov mushroomspace25.x,180
				mov mushroomspace25.y,71
				mov mushroomspace26.x,180
				mov mushroomspace26.y,72
				mov mushroomspace27.x,180
				mov mushroomspace27.y,73
				mov mushroomspace28.x,180
				mov mushroomspace28.y,74
				mov mushroomspace29.x,180
				mov mushroomspace29.y,75
				mov mushroomspace30.x,180
				mov mushroomspace30.y,76
				mov mushroomspace31.x,180
				mov mushroomspace31.y,77
				mov mushroomspace32.x,180
				mov mushroomspace32.y,78
				mov mushroomspace33.x,180
				mov mushroomspace33.y,79
				mov mushroomspace34.x,180
				mov mushroomspace34.y,80
				mov mushroomspace35.x,180
				mov mushroomspace35.y,81
				mov mushroomspace36.x,180
				mov mushroomspace36.y,82	
			
			
		jmp random
CreateObstacle ENDP
changedonosaurdown PROC
	sub xyPosition1.y,26
	sub xyPosition2.y,26
	sub xyPosition3.y,26
	sub xyPosition4.y,26
	sub xyPosition5.y,26
	sub xyPosition6.y,26
	sub xyPosition7.y,26
	sub xyPosition8.y,26
	sub xyPosition9.y,26
	sub xyPosition10.y,26
	sub xyPosition11.y,26
	sub xyPosition12.y,26
	sub xyPosition13.y,26
	sub xyPosition14.y,26
	sub xyPosition15.y,26
	sub xyPosition16.y,26
	sub xyPosition17.y,26
	sub xyPosition18.y,26
	sub xyPosition19.y,26
	sub xyPosition20.y,26
	sub xyPosition21.y,26
	sub xyPosition22.y,26
	sub xyPosition23.y,26
	sub xyPosition24.y,26
	call CreateDinosaur
	ret
changedonosaurdown ENDP
changedinosaurup PROC
	add xyPosition1.y,26
	add xyPosition2.y,26
	add xyPosition3.y,26
	add xyPosition4.y,26
	add xyPosition5.y,26
	add xyPosition6.y,26
	add xyPosition7.y,26
	add xyPosition8.y,26
	add xyPosition9.y,26
	add xyPosition10.y,26
	add xyPosition11.y,26
	add xyPosition12.y,26
	add xyPosition13.y,26
	add xyPosition14.y,26
	add xyPosition15.y,26
	add xyPosition16.y,26
	add xyPosition17.y,26
	add xyPosition18.y,26
	add xyPosition19.y,26
	add xyPosition20.y,26
	add xyPosition21.y,26
	add xyPosition22.y,26
	add xyPosition23.y,26
	add xyPosition24.y,26
	call CreateDinosaur
	ret
changedinosaurup ENDP
END_FUNC PROC
	exit
END_FUNC ENDP
main PROC
	call CreateFloor
	call CreateDinosaur
	call CreateObstacle
main ENDP

END main