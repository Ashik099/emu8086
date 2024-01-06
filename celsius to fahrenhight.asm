.MODEL SMALL

.STACK 100H

.DATA
  F DW ?
.CODE


    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX  
     ;CONVERSTION CELSIUS TO FAHRENHEIT
     ;FORMULA F =C*9/5 +32-1 
     
     
     MOV AX,260
     MOV BX,9
     MUL BX
     
     MOV BX,5
     DIV BX
     
     ADD AX,32
     
     MOV F,AX; 
        
    MAIN ENDP
    
    END MAIN
    
    RET



