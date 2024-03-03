.model small
.data
arr dw 0001h,-0002h,0003h,-0004h,0005h
pos dw 0
neg1 dw 0
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,offset arr
up:
mov ax,[si]
rol ax,1
jc next
 inc pos
 mov bx,pos
 next:
ror ax,1
rol ax,1
 jnc n
 inc neg1
 mov dx,neg1
  n:
 add si,2
 dec cx
 jnz up
ends
end
