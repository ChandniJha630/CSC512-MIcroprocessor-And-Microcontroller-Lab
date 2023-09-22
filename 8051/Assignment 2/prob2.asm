ORG 0x0000 
SJMP MAIN
MAIN: NOP
MOV DPTR, #0100H                                ; Initialize the data pointer (DPTR) with the address 0100H
MOV R7, #0FFH                                       ; Initialize register R7 with the value 0xFF (255 in decimal)
MOV R4, #00H                                         ; Initialize register R4 with the value 00 (0 in decimal)
MOV 20H, R2                                           ; Move the value in register R2 to memory location 20H
MOV 21H, R3                                           ; Move the value in register R3 to memory location 21H

LOOP:
MOVX A, @DPTR                                    ; Move the byte at the memory address pointed to by DPTR       :                                                                       into accumulator A

CJNE A, 21H, LOWER                              ; Compare A with the value at memory location 21H, if not :                                                                      equal, jump to LOWER
SJMP OUT                                                  ; Skip the LOWER block and jump to OUT

LOWER:
JNC OUT                                                     ; Jump if no carry flag is set
CJNE A, 20H, UPPER                                 ; If the carry flag is set, compare A with the value at   20H  :                                                                       memory  location, if   not equal, jump to UPPER
SJMP OUT                                                    ; Skip the UPPER block and jump to OUT

UPPER:
JC OUT                                                          ; Jump if carry flag is set 
INC R4                                                            ; Increment register R4
OUT:
INC DPTR                                                         ; Increment the data pointer DPTR
DJNZ R7, LOOP                                                ; Decrement R7 and jump back to LOOP if it's not zero 
END	

