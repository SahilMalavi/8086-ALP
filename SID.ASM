mov cl,06h
mov si,offset array
mov di,offset arrayn
next:
     mov bl,[si]
     mov bl,[si+1]
     dec cl
     je up
     inc si
     jnz next
     jmp exit
up:
    mov dl,al
    add si,2   
    jnz next
    jmp exit
exit: