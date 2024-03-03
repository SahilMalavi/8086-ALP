.model small
.data
num db 89h
sum db 0h
rem db 0h
d1 db 0h
ten db 10h
tmp db 1
n db 0h
msg1 db  '89 IS A DISARIUM NUMBER$'
msg2 db  '89 IS NOT A DISARIUM NUMBER$'
.code
mov ax,@data
mov ds,ax
mov al,num
mov n,al  ;assign num to n
mov cl,2  ;length of number 2 is assign to cl

up:
  mov bl,n
 cmp bl,0h  ;compare bl with 0
  je next
   mov al,n
   mov ah,00h
   div ten     ;find remainder after divide by 10
   mov rem,ah ;remainder store in rem
   mov d1,al
  cmp cl,tmp
  je go3
   mov al,rem
   mul rem   ;square of rem
  go3:
   
   add al,sum  ;adding square of remainder in sum
   mov sum,al
   cmp cl,1h
  jne go4
   add al,rem  ;adding remainder in al
   mov sum,al  ;moving final addition to sum variable
  go4:
   mov al,n
   mov ah,00h
   div ten      ;dividing num by 10 
   mov n,al
  next:
dec cl
jnz up

mov bl,1h
up5:
cmp num,bl  ;compare number with bl
 jne b
  mov dl,bl    ;mov bl to dl 
  jmp go5
 b:
 cmp sum,59h ; compare sum with 59h that is 89 in decimal
  je go
 inc bl
 jmp up5
go5:

 cmp sum,dl
 jne go2
go:
 mov ah,09h
  lea dx,msg1
  int 21h
 mov ah,4ch
  int 21h
go2: 
mov ah,09h
 lea dx,msg2
 int 21h
 mov ah,4ch
 int 21h
 ends
end



