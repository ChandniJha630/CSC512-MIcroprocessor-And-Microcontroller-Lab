ORG 0x0000 
SJMP MAIN
MAIN: NOP
MOV R7, #0AH              ; Initialize register R7 with the value 0AH (10 in decimal)
MOV R0, #30H                ; Initialize register R0 with the value 30H (48 in decimal)
MOV DPTR, #1030H       ; Initialize the data pointer (DPTR) with the address 1030H

LOOP:
MOV A, @R0                       ; Move the byte at the memory address pointed to by R0 into accumulator A
MOVX @DPTR, A               ; Move the value in accumulator A to the memory address pointed to by DPTR
INC R0                                  ; Increment register R0 to point to the next memory location
INC DPTR                            ; Increment DPTR to point to the next memory location
DJNZ R7, LOOP                  ; Decrement R7 and jump back to LOOP if it's not zero
