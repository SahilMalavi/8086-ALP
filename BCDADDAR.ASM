.model small
.data
arr db 1h,2h,3h,4h
lsb db 0h
msb db 0h
.code
mov ax,@data
mov ds,ax
mov cx,4
mov si,offset arr
mov al,[si]
dec cx
up:
inc si
add al,[si]
DAA

mov lsb,al
jnc next
 inc msb
mov ah,msb

next:
dec cx
jnz up
ends
end
