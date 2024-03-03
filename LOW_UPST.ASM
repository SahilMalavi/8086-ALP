.model small
.data
lower_s db 'sahil$'
upper_s db 20 dup('$')
.code
mov ax,@data
mov ds,ax
mov si,offset lower_s
mov di,offset upper_s
up:
 mov al,[si]
cmp al,'$'
je next
 sub al,20h
 mov [di],al
 inc si
 inc di
 jmp up
next:

mov ah,09h
lea dx,upper_s
int 21h
mov ah,4ch
int 21h


 ends
 end
