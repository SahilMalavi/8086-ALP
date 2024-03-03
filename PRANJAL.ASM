.model small                           
 .data
 num db 19h                
 divisor db 10h
  temp db 0h
 rem db  0h
 quo db 0h
 rem1 db 0h
 quo1 db 0h
 divi db 0h
  msg1 db 'niven no: YES$'
  msg2 db 'niven no: NO$'

 .code
 mov ax,@data 
 mov ds,ax
 mov al,num
 mov temp,al         ;moving the value to al register

 mov al,temp
 cbw
 div divisor         ;division of number 
 mov quo,al          ; quo  is moved from al to quo variable
 mov rem,ah          ; rem is moved from ah to rem variable
 mov bl,quo          ;quo moved to bl
 add bl,rem


          ;addition of remendar and quotient
 mov divi,bl      ; bl value moved to divisor
  mov al,temp
 cbw
 div divi         ;division of number by addtion of quo and rem
 mov rem1,ah         ;remainder is moved to rem1 variable               
 mov quo1,al
          ;quotient is moved to quo1 variable
cmp rem1,06h
jne dn          ;jump when no carry to dn lable
mov ah,09h
lea dx,msg1          ; printing the massage
int 21h
jmp exit            ;jump to exit

 dn:
 mov ah,09h
 lea dx,msg2   ;mov dx, offset msg1
  int 21h
 exit:
    mov ah,4ch
    int 21h

 ends
end
