;Add 2 number from user result<10
.model small
.stack 100h  

.data

sum db ?

.code


main proc 
   mov ax,@data  
   mov ds,ax
   int 21h
   
    
   mov ah,1
   int 21h
   mov bl,al
   sub bl,48
   
   mov ah,1
   int 21h
   mov bh,al 
   sub bh,48
   
   add bl,bh

    
   mov sum,bl 
   
    
    mov ah,4ch
    int 21h
    
    main endp
end main