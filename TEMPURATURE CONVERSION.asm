.MODEL SMALL

.STACK 100H

.DATA
  F DW ? 
  C DW ?
  K DW ?  
  C1 DW ?
.CODE


    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX  
     ;CONVERSTION FAHRENHEIT TO CELSIUS  
     ;FORMULA F =C(5/9)+32
     
     
     MOV AX,260
     MOV BX,9
     MUL BX
     
   
     MOV BX,5
     DIV BX
 
     ADD AX,32
     
     MOV F,AX; 
     ;FORMULA c =(f-32)x5/9 
     MOV AX,500
     SUB AX,32
     
     MOV BX,5
     MUL BX
     
     MOV BX,9
     DIV BX
     
     MOV C,AX  
     ;CELSIUS TO KELVIEN
     ;FORMULA K=C+273.15
     
     MOV AX,260
     ADD AX,273
     
     MOV K,AX
     
     ;KELVIEN TO CELSIUS
     ;FORMULA C=K-273.15
      
      MOV AX,500
      SUB AX,273
      
      MOV C1,AX;
        
    MAIN ENDP
    
    END MAIN
    
    RET



