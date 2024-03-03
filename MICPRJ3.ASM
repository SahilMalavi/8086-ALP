.model small
.data
   arr db 98h,3h,34h,2h,99h
   great db 0
   smalln db 0
 msg1 db '99 is greater$'
 msg2 db '       |  2 is smaller$'
.code
   mov ax,@data
   mov ds,ax
   mov cl,5
   mov si,offset arr
   mov al,[si]
   dec cl
  next:
     inc si
     cmp al,[si]
     jnc go
        mov al,[si]
     go:
        dec cl
    jnz next
    mov great, al
cmp great,99h
 jne next3
    mov ah,09h
    lea dx,msg1
    int 21h
   next3:
     mov si,offset arr
     mov bl,[si]
     mov cl,5
     dec cl
  next1:
     inc si
     cmp bl,[si]
     jc go1
       mov bl,[si]
     go1:
       dec cl
    jnz next1
      mov smalln,bl
cmp smalln,02h 
 jne next4
    mov ah,09h
     lea dx,msg2
   int 21h
next4:
   mov ah,4ch
   int 21h

ENDS
END

