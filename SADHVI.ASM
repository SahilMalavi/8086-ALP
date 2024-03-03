.model small
.data
arr1 db 09h,06h,05h,05h,03h,03h
arr2 db 6 dup (0)
n db 0
.code
mov ax,@data
mov ds,ax
mov cl,06h

lea si,arr1
lea di,arr2

;sorting arr1
 mov bl,6

step1:
 mov si,offset arr1
 mov cl,6

step:
 mov al,[si]
 cmp al,[si+1]
jc down
 xchg al,[si+1]
 xchg al,[si]
down:
 add si,1
 dec cl
 jnz step
 dec bl
jnz step1

mov cl,06h
mov si,offset arr1
up2:
 inc si
  mov al,[si]
 dec cl
jnz up2


;removing repeated element in an array

mov cl,6
mov si,offset arr1
inc si
up:
     mov al,[si]
     inc si
     cmp al,[si]
     je next
     mov [di],al
     inc di
     inc si
     dec cl
     jnz up
     jmp exit
next:
   ; mov bl,al
    mov [di],al
    inc si
    dec cl
    jnz up

exit:

mov cl,06h
mov di,offset arr2
up1:
 mov al,[di]
 inc di
 dec cl
jnz up1


mov ah,4ch
int 21h
     ends
     end

