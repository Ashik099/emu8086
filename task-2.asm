.model small
.stack 100h
.data

START equ 1000h  

.code

main proc
    mov ax, @data
    mov ds, ax

    
    mov ax, [START]      
    mov bx, [START+2]    
    mov cx, [START+4]    

    ; Compare AX and BX to find the maximum
    cmp ax, bx
    jg  check_cx
    mov ax, bx            
check_cx:
    cmp ax, cx
    jg  update_memory
    mov ax, cx           

update_memory:
    mov [START+6], ax    

    ; Exit
    mov ah, 4Ch
    int 21h
    main endp
end main
