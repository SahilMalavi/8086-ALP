.model small
 disp macro m
  mov ah,09h
  lea dx,m
  int 21h
  mov ah,4ch
  int 21h
 endm
.data
 msg db 'HELLO SIR$'
.code
 mov ax,@data
 mov ds,ax
disp msg
ends
end
