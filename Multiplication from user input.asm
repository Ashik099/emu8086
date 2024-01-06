;Multiplication from user input
.model small
.stack 100h
.data 
  msg1 db '1st input: $'  
  msg2 db '2nd input: $'
  result db 'Output: $'
  a db ?
  b db ?
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
            
            
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    sub al,48 
    
    
  
    
    mul a
    
    aam
    
    mov bx,ax
    
     
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,result
    int 21h
    
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    
    
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main