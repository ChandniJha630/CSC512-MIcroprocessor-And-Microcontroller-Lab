ORG 0x0000                            ; Set the origin address to 0x0000
SJMP MAIN                             ; Jump to the MAIN label

MAIN:
NOP                                            ; No operation (do nothing)

MOV R7, #36                              ; Move the immediate value 36 into register R7
MOV A, R7                                  ; Move the value in register R7 into the accumulator A

ANL A, #0F0H                             ; Perform a bitwise AND operation with the immediate value 0F0H
MOV R6, A                                   ; Move the result into register R6

SWAP A                                         ; Swap the nibbles in the accumulator A
ORL A, R6                                      ; Perform a bitwise OR operation between A and R6
MOV R6, A                                     ; Move the result back into register R6
