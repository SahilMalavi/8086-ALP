.model small
.data
n1 dd 11111111h
n2 dd 00001111h
ans dd ?
.code
mov ax,@data
mov ds,ax
mov ax,word ptr n1
mov bx,word ptr n1+2
mov cx,word ptr n2
mov dx,word ptr n2+2
add ax,cx
add bx,dx
mov word ptr ans,ax
mov word ptr ans+2,bx
ends
end
