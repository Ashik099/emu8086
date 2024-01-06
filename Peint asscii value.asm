;Peint asscii value 
.model small
.stack 100h
.data

.code

main proc 
    mov cx,256
    
    mov ah,2
    mov dl,0
    
    loop:
        int 21h
        
        inc dl
        dec cx
        jnz loop
    
    
   
    exit:
    mov ah,4ch
    int 21h
    main endp
end main