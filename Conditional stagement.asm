;Conditional stagement
.model small
.stack 100h
.data 
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg L1
    
    jmp L2
    
    
    
    L1: 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    L2:
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main