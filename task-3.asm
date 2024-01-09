.model small
.stack 100h
.data

A dw 5  
B dw 3
Product dw ?

.code

main proc
    mov ax, @data
    mov ds, ax
  
    mov ax, A
    mov bx, B
    call MULTIPLY

    mov ah, 4Ch
    int 21h
main endp

MULTIPLY proc
    mov cx, bx          
    xor dx, dx         

multiply_loop:
    add dx, ax          
    dec cx          

    jnz multiply_loop  


    mov Product, dx     

    ret
MULTIPLY endp

end main
