.model small
.data
arr1 db 1h,2h,3h,4h,5h
large1 db 0h
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,offset arr1
mov al,[si]
dec cl
up:
cmp al,[si]
jnc next
mov al,[si]
next:
inc si
dec cl
jnz up
ends
end
