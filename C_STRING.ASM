.model small
.data
str1 db 'sahil$'
count db 0
.code
mov ax,@data
mov ds,ax
mov si,offset str1
up:
 mov al,[si]
 cmp al,'$'
je exit
   inc count
   mov bl,count
   inc si
  jmp up
exit:
ends
end


