.model small
.data
arr db 1h,2h,3h,4h,5h
a_odd db 0
a_even db 0
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,offset arr
up:
 mov al,[si]
 ror al,1
  jnc next
    inc a_odd
    mov bl,a_odd
 jmp go
 next:
    inc a_even
    mov dl,a_even
   go:
    inc si
    dec cx
    jnz up
ends
end
