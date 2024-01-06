;Upper cash to lower cesh
.model small
.stack 100h  
.code


main proc 
    mov ah,1
    int 21h
    mov bl,al
    sub bl,32 
    
    int 21h
    mov cl,al 
    sub cl,32
       
    int 21h
    mov ch,al
    sub ch,32
    
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov dl,bl
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main