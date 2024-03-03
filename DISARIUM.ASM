.model small
.data
num dw 89h
sum dw 0h
div1 dw 0h
rem dw 0h
ten dw 10h
temp db 0
n dw 0h
msg1 db 'Is a disarium number$'
msg2 db 'Is not disarium number$'
.code
mov ax,@data
mov ds,ax
mov ax,num
mov n,ax  ;assign num to n
mov cl,2
mov temp,cl

up:
 mov bx,n
 cmp bx,0h
  je next
  mov ax,n
  div ten     ;find remainder after divide by 10
  mov rem,dx ;remainder store in rem
  mov div1,ax
 cmp cl,temp
  jne y
   mov ax,rem
   mul div1   ;square of rem
  y:
  add sum,ax
  mov bx,sum
  cmp cl,temp
  je go1
    add ax,bx
    mov sum,ax
   go1:
  
 mov ax,n
  div ten
    mov n,ax
  next:

dec cl
jnz up

mov cx,num
cmp sum,cx
jne go
 mov ah,09h
  lea dx,msg1
  int 21h
 mov ah,4ch
  int 21h
 go:
mov ah,09h
 lea dx,msg2
 int 21h
 mov ah,4ch
 int 21h
 ends
end



