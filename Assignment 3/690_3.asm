;<code>
jmp start
;data
;code
start: nop
LDA 8C01H
MOV D,A
LDA 8C00H

MVI C,0FFH

DIV: 	INR C
	SUB D
	JNC DIV
	ADD D
STA 8C03H
MOV A,C
STA 8C02H
Hlt
