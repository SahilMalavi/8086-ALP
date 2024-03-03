.model small
.data
num dd  10000000h
divisor dw 1000h
.code
mov ax,@data
mov ds,ax
mov ax,word ptr num
mov dx,word ptr num+2
div divisor
cwd
mov bx,ax
mov cx,dx
ends
end
