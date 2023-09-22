ORG 0x0000 
SJMP MAIN
MAIN: NOP
MOV DPTR, #0FF00H   ; Initialize the data pointer (DPTR) with the address 0FF00H
MOVX A, @DPTR         ; Move the byte at the memory address pointed to by DPTR into accumulator A

MOV R0, 0FFH               ; Move the immediate value 0FFH into register R0
MOV 0FFH, A                ; Move the value in accumulator A to memory location 0FFH

MOV A, R0                     ; Move the value in register R0 into accumulator A
MOVX @DPTR, A         ; Move the value in accumulator A to the memory address pointed to by DPTR
