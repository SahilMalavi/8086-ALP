;ALP to Add an array elements of 16 bit
;------------------------------------

.model small
.data
array   dw 0fffh,0fffh,0fffh     ;array having size 3
sum_lsw  dw 0        	        ;initialization of variable sum_lsw=0
sum_msb  db 0

.code
mov ax,@data
mov ds,ax
mov cx,3                  ;assign array size to CX (As Counter)
mov si,offset array    ;move first ele of array to si

up:                            ;able to jump up and start execution from variable up:
mov ax,[si]               ;mov value store in [si] in ax
add sum_lsw,ax       ;add sum_lsw+ax and result store in sum_lsw
jnc next                   ;jnc (jump if not carry) move cursor to variable next when carry is not generated
  inc sum_msb          ;increment sum_msb [as carry bit]
   
next:
  mov bx,sum_lsw       ;show sum_lsw addition in bx register
  inc si        	           ;increment si [first 0 then 1 ..]
  dec cx        	           ;decrement cx (counter)
jnz up          	         ;jnz (jump if not zero) move cursor to variable 'up' while CX is not become 0 
ends
end
