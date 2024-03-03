.model small
.data
arr db 11h,22h,33h,44h
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
jnc next
 inc msb
next:
inc si
add al,[si]
dec cx
jnz next
mov ah,msb

ends
end
