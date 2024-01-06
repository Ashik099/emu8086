;add two number using variable 
.model small
.stack 100h
.data
a db ?
b db ?

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov a,al
    
    int 21h
    mov b,al
    
    mov al,a
    add al,b
    
    mov ah,2
    mov dl,al
    sub dl,48
    int 21h
    
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main