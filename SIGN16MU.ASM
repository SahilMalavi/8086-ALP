.model small
.data
n1 dw -1234h
n2 dw -4321h
r_msb dw 0
r_lsb dw 0
.code
mov ax,@data
mov ds,ax
mov ax,n1
imul n2
mov r_lsb,ax
mov r_msb,dx
ends
end
