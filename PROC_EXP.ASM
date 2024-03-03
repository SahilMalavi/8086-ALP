.model small
.data
a db 01h
b db 02h
c db 03h
d db 04h
mul1 db ?
mul2 db ?
res db ?
.code
mov ax,@data
mov ds,ax
CALL demo_1
mov ah,09
int 21h
  demo_1 PROC NEAR
  mov al,a
  mul b
  mov mul1,al
  mov al,c
  mul d
    add al,mul1
    mov res,al
  ret
  demo_1 ENDP
ends
end
  
