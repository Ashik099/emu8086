include 'emu8086.inc'
.MODEL SMALL

.STACK 100H

.DATA
   
.CODE


MAIN PROC
         ;lower case to upper case
      PRINTN 'Enter Char Small or Large: '
       mov ah,01
       int 21h
      PRINTN '' 
       mov bl,al 
       mov cx,5
       
       cmp bl,97   ;a=97
       jge small_char_to_large_char 
       add bl,32     ;convert to small
       PRINTN 'output' 
   large_char_to_small_char:
      
       
       mov ah,02
       mov dl,bl
       int 21h  
       inc bl  ;increment
       
       Loop large_char_to_small_char
       jmp exit
       
   small_char_to_large_char:    
       sub bl,31
       
      PRINTN 'output' 
      BIG: 
       
       mov ah,02
       mov dl,bl
       int 21h
       inc bl
       loop BIG 
       exit:
       mov ah,4ch
MAIN ENDP

END MAIN

RET





