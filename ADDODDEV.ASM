.model small
.data
arr db 1h,2h,3h,4h,5h,1h
a_odd db 0
a_even db 0
.code
mov ax,@data
mov ds,ax
mov cx,6
mov si,offset arr
up:
 mov al,[si]
 ror al,1
  jnc next
    rol al,1
    add a_odd,al
    mov bl,a_odd
  jnc n
  next:
    rol al,1
    add a_even,al
    mov dl,a_even
    n:
    inc si
    dec cx
    jnz up
ends
end
