;Divition from user input
.model small
.stack 100h
.data 
.code

main proc
    mov al,8
    mov bl,3
    
    div bl ;al=al/bl
    
    mov cl,al ;Upper part
    mov ch,ah ;Lower Part
    
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,ch
    add dl,48
    int 21h
    
    
    
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main