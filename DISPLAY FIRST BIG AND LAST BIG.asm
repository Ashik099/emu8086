include 'emu8086.inc'
.MODEL SMALL

.STACK 100H

.DATA  

str db 'stUDeNTs','$'
   
.CODE

;display the first and last capital letter
;of a given string
MAIN PROC      
    
    mov ax,@data
    mov ds,ax 
    
    mov SI,offset str   
    mov ah,09h
    int 21h
      
    PRINT ' '
    
    CMP [SI],'$'  ;IF THIS STRING 0 THEN EXIT
    JE EXIT 
    
    CMP [SI],97
    JGE SMALL
    JMP FIRST_BIG
    
    SMALL:
        INC SI  
        CMP [SI],'$'
        JE EXIT
        CMP [SI],97
        JGE SMALL
        JGE FIRST_BIG
    FIRST_BIG: 
    MOV DL,[SI]
    MOV AH,02H
    INT 21H 
    JMP LAST_BIG
    
    LAST_BIG:  
    INC SI
    CMP [SI],'$'
    JE EXIT
    CMP [SI],97
    JGE LAST_BIG
    MOV BL,[SI]
    JMP LAST_BIG
   
     
    
    
    EXIT: 
    MOV DL,BL
    MOV AH,02 
    INT 21H
    
    MOV AH,4CH
    INT 21H 
  
   
      
MAIN ENDP

END MAIN

RET





