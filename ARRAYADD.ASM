.model small
.data
arr1 db 0ffh,0ffh,0ffh     ;array [arr1] having size 3
sum_lsb db 0        	       ;initialization of variable sum=0
sum_msb db 0

.code
mov ax,@data
mov ds,ax
mov cx,3                  ;assign array size to CX (As Counter)
mov si,offset arr1   ;move first ele of array to si

up:                            ;able to jump up and start execution from variable up:
mov al,[si]                ;mov value store in [si] in al
add sum_lsb,al        ;add sum+al and result store in sum
jnc next                    ;jnc (jump if not carry) move cursor to variable next when carry is not generated
  inc sum_msb           ;increment sum_msb [as carry bit]
  mov bh,sum_msb   ;show msb addition in bh register
next:
  mov bl,sum_lsb       ;show lsb addition in bl register
  inc si        	 ;increment si [first 0 then 1 ..]
  dec cx        	 ;decrement cx (counter)
jnz up          	 ;jnz (jump if not zero) move cursor to variable 'up' while CX is not become 0 
ends
end
