.model small
.stack 100h
.data
.code
  main proc
    mov cx, 100 
    mov dx, 7   
print_row:
    push cx    
    mov cx, 100 
print_col:
    mov ah, 02h 
    mov dl, '#'
    int 21h
    loop print_col

    pop cx
    dec dx
    cmp dx, 0
    jne print_row

    mov ax, 4c00h 
    int 21h
  main endp
end main