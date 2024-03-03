.model small
ex macro x,y,r1,p
mov al,x
mul x
mov r1,al
mov al,y
mul y
add al,r1
mov p,al
endm
.data
x db 2h
y db 3h
p db ?
r1 db ?
.code
mov ax,@data
mov ds,ax
ex x,y,r1,p
ends
end
