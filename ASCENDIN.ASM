.model small
.data
arr db 2h,1h,3h,5h,4h
n db 5
.code
mov ax,@data
mov ds,ax
mov bl,5h
step1:
 mov si,offset arr
 mov cl,4h
step:
 mov al,[si]
 cmp al,[si+1]
 jnc next
  xchg al,[si+1]
  xchg al,[si]
 next:
  add si,1
  dec cl
  jnz step
  dec bl
  jnz step1
  mov si,offset arr
up:
cmp n,0
je next1
 mov al,[si]
 inc si
 dec n
 jnz up
next1:


 ends
 end
