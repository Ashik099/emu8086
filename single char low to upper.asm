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
       
       cmp bl,97   ;a=97
       jge small_char_to_large_char 
       jge large_char_to_small_char 
       
    large_char_to_small_char:
       add bl,32 
       mov ah,02
       mov dl,bl
       int 21h   
       jmp exit
       
   small_char_to_large_char:    
       sub bl,32 
       
       
       
       PRINTN 'output'
       mov ah,02
       mov dl,bl
       int 21h   
       exit:
       mov ah,4ch
MAIN ENDP

END MAIN

RET





