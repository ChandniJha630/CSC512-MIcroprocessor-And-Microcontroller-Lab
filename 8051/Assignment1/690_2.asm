ORG 0x0000 
SJMP MAIN
MAIN: NOP
MOV A, R0               
MOV B, R1                
DIV AB                        
MOV R2, A                
MOV R3, B                  
MOV B, R1                  
MUL AB                        
ADD A, R3                
MOV R0, A    
END
