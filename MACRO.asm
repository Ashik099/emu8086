;A macro is a set of instructions grouped under a single unite.

.Model small

.stack 100h

    


 DISPLAY MACRO STRING
    
  MOV DX,OFFSET STRING
  MOV AH,09
  INT 21H
    
 ENDM
 
.DATA
 MESSAGE DB 'WE ARE STUDENT OF GREEN UNIVERSITY $'
.CODE

    MAIN PROC 
     MOV AX,@DATA
     MOV DS,AX
   DISPLAY MESSAGE   
        
       CALL USER
       CALL USER
        
    
            
             
       USER PROC 
        MOV AX,10
        MOV BX,CX 
        RET
        
      USER ENDP  
   
END MAIN 

MAIN ENDP


