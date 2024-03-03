.model small
.data
num dw 1234h
c dw 0
.code
mov ax,@data
mov ds,ax
mov cx,16
mov ax,num
up:
 ror ax,1
 jc next
  inc c
  mov bx,c
  next:
    dec cx
  jnz up
 ends
 end
