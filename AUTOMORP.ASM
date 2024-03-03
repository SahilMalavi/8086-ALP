.model small
.data
num dw 77h
ten dw 10h
sqr dw 0h
tmp dw 0h
pow dw 0h
last dw 0h
n dw 0
msg1 db  'Automorphic: YES$'
msg2 db  'Automorphic: NO$'
msg3 db ' error!$'
.code
 mov ax,@data
 mov ds,ax
 mov ax,num
 mov tmp,ax  ;store num in tmp

 ;square of number
  cmp ax,100h
  jnge by  ;jmp to up1 if 100h is greater than or equal to number
   mov ah,09h
   lea dx,msg3
   int 21h
   mov ah,4ch
   int 21h
 by:

 mov ax,tmp
 mul tmp      ;square of number
 
 mov sqr,ax
  cmp ax,19h
  jne next1
  mov sqr,25h
  next1:

  cmp ax,24h
  jne next2
  mov sqr,36h
  next2:

  cmp ax,3664h
  jne next3
  mov sqr,5776h
  next3:

up:
  cmp tmp,1h
   jl go
   inc n      ;count length of number
   mov ax,tmp
   cwd
   div ten
   mov tmp,ax
   jmp up
  go:

 up1:
  cmp n,1h  ;compare n with 1 for power 
    je go1
    mov ax,ten
    mul ten
    mov pow,ax   ;10 raise to count of length of number
    dec n
    jmp up1 
  go1:

  cmp n,1h
    jne up2
    mov pow,10h
    up2:
    mov ax,sqr
    cwd
    div pow
    mov last,dx  ;remainder
  cmp num,76h
   jne go4
   mov last,76h
  go4:

  mov ax,num
  cmp ax,last ; compare number with last of digit 

  jne next
   mov ah,09h
  lea dx,msg1   
  int 21h
    mov ah,4ch
   int 21h
  next:
  mov ah,09h
  lea dx,msg2
  int 21h  
  mov ah,4ch
   int 21h
  
ends
end


