.model small
.data
arr db 1h,2h,3h,5h,7h
c_odd db 0
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,offset arr
up:
 mov ax,[si]
 ror ax,1
 jnc next
  inc c_odd
  mov al,c_odd
 next:
  inc si
  dec cx
jnz up
ends
end
