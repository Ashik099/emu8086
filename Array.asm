INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H

.DATA   

ARR DW 9,3,6,5,4,3

.CODE

MAIN PROC  
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET ARR
  
   
    ;MOV DL,[SI]  
   
  
    MOV DL,[SI]
    ADD DL,48  
    MOV AH,02H
    INT 21H 
    
    
    INC SI
    
    
    MOV DX,[SI] 
    ADD DL,48  
    MOV AH,02H
    INT 21H    
    
     

    
     INC SI
    
    
    MOV Dx,[SI] 
    ADD DL,48 
    MOV AH,02H
    INT 21H  
    
     

    
    
     
     INC SI
    
    
    MOV Dx,[SI] 
    ADD DL,48 
    MOV AH,02H
    INT 21H
    
    
    
     
     INC SI
    
    
    MOV Dx,[SI] 
    ADD DL,48 
    MOV AH,02H
    INT 21H
    
    
     
     INC SI
    
    
    MOV Dx,[SI] 
    ADD DL,48 
    MOV AH,02H
    INT 21H
 
 
     ADD DL,48
    
  
    
    
  


 MOV AH, 4CH
 INT 21h 
 
 
 
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN