;<CODE>
jmp start
;data
;code
start: nop

LXI H,8550H
MOV L,M
MVI H,90H
MOV A,M
STA 8551H
Hlt
