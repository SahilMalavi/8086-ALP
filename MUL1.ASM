 .model small
 .data
 n1 db 32h
 n2 db 88h
 r_msb db 0h
 r_lsb db 0h
 .code
 mov ax,@data
 mov ds,ax
 mov al,n1
 mul n2
 DAA
 jnc next
 inc r_msb
 next:
 mov r_lsb,al
  
 ends
 end

