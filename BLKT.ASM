.model small
.data
src_arr dw 1234h,2345h,0456h,4654h
des_arr dw 5 DUP(0)
.code
mov ax,@data
mov ds,ax
mov cx,4
mov si,offset src_arr
mov di,offset des_arr
up:
mov ax,[si]
mov [di],ax
dec si
dec di
dec cx
jnz up
ends
end
