.model small
 exp macro x,y,r1,res
  mov al,x
  mul x
  mov r1,al
  mov al,y
  mul y
  add al,r1
  mov res,al
 endm
 .data
 x db 02h
 y db 04h
 r1 db ?
 res db ?
 .code
 mov ax,@data
 mov ds,ax
exp x,y,r1,res
ends
end
