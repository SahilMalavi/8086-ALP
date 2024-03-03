.model small
.data
n1 dw 0784h
n2 dw 0692h
r_l dw 0
r_m dw 0
.code
mov ax,@data
mov ds,ax
mov ax,n1
mul n2
mov r_l,ax
mov r_m,dx
ends
end
