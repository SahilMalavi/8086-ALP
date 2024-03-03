.model small
.data
num1 db 04h
num2 db 05h
res dw 0
.code
mov ax,@data
mov ds,ax
mov al,num1
mul num2
ends
end
