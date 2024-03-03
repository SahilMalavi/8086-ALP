.model small
.data
arr db 1h,2h,3h,-4h,5h,4h,-66h,-3h,-1h,-34h
sum_p db ?

.code
mov ax,@data
mov ds,ax
mov cl,10
mov si,offset arr
up:
 mov al,[si]
 rol al,1
 jc next
  add bl,al
  next:
  inc si
  dec cl
  jnz up
  mov sum_p,bl

 ends
end
