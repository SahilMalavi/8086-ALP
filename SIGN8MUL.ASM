.model small
.data
n1 db -18h
n2 db -20h
rs dw 0
.code
mov ax,@data
mov ds,ax
mov al,n1
imul n2
mov rs,ax
ends
end
