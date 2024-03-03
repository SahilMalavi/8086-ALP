.model small
.data
str_s db 'laiciffonu$'
str_d db 20 dup('$')
count db 0
.code
mov ax,@data
mov ds,ax
mov si,offset str_s
up:
 mov al,[si]
 cmp al,'$'
 je next
  inc si
  inc count
  jmp up
 next:
mov di,offset str_d
up1:
 dec si
 mov al,[si]
 mov [di],al
 inc di
 dec count
 jnz up1

mov ah,09h
lea dx,str_d
int 21h
mov ah,4ch
int 21h


 ends
 end
