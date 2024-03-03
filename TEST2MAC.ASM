data segment
 arr db 12h,11h,2h,3h,4h
 sml db ?

data ends
code segment
 assume cs:code,ds:data

 smlmacro macro res
   up:
    inc si
    cmp al,[si]
    jc next
     mov al,[si]
    next:
     dec cl
     jnz up
    mov res,al
 endm

start:
 mov ax,data
 mov ds,ax
 mov cl,05h
 mov si,offset arr
 mov al,[si]
 dec cl
 smlmacro sml
code ends
 end start

