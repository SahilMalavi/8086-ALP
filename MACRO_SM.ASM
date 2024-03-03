.model small
 small1 macro sml
  up:
    inc si
    cmp al,[si]
     jc next
      mov al,[si]
     next:
     dec cx
    jnz up
    mov sml,al
   endm
 .data
  arr db 11h,22h,03h,33h,65h
  sml db ?
 .code
  mov ax,@data
  mov ds,ax
  mov cx,5
  mov si,offset arr
  mov al,[si]
  dec cx
 small1 sml
ends
end
