.model small
.data
num1 db 8h
num2 db 10h
q db ?
r db ?
.code
mov ax,@data
mov ds,ax
mov al,num1
cbw
div num2
mov  q,ah
mov r,al
ends
end
