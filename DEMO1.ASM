.model small
.data
 dividend dd -11111h   ;define double(dd)
 divisor dw 11h
 quo dw 0
 rem dw 0
.code
 mov ax,@data
 mov ds,ax
 mov ax, word ptr dividend
 mov dx, word ptr dividend +2

 idiv divisor

 mov quo, ax
 mov rem, dx
ends
end