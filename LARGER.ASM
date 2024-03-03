.model small
.data
arr1 db 01h,11h,03h,05h
 larg db ?
.code
mov ax,@data
mov ds,ax
mov cx,4
mov si,offset arr1
mov al,[si]
dec cx
up:
 inc si
 cmp al,[si]
 jc next
 mov al,[si]
next:
    dec cx
 jnz up
 mov larg,al
ends
end
