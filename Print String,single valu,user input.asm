.model small
.stack 100h
.data

a db 'Enter a single number: $' 

b db 'The Number is: $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h 
    
    mov ah,1  
    int 21h
    mov cl,al
   
    
    mov ah,2        
    mov dl,10 
    int 21h
    mov dl,13
    int 21h
            
    mov ah,9
    lea dx,b
    int 21h 
    
    mov ah,2
    mov dl,cl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main