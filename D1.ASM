.model small
.data
num1 db 01h
num2 dw 0001h
res dw 0              
.code
mov ax,@data
mov ds,ax
mov ax,num2
cbw num1
add ax,num1
mov res,ax

ends
end

