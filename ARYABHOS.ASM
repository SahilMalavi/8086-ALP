data segment
arr1 db 01h,02h,03h,04h,05h
arr2 db 06h,07h,08h,09h,10h
arr3 db 10 dup (0)
n db 0h
data ends

 code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

;lea si,arr1
;lea di,arr2
;lea bx,arr3

mov cl,5

l1:
mov al,[si] ;read no from source array

mov [bx],al
inc si ; increment source memory pointer
inc bx ;increment source memory pointer
dec cl
jnz l1

;move arr2 in arr3
mov cl,5
l2:
mov al,[di] ;read no from source array
mov [bx],al
inc di ; increment destination memory pointer
inc bl ;increment source memory pointer
dec cl
jnz l2

;sorting arr3
 mov bl,10

step1:
 mov si,offset arr3
 mov cl,10

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

; for display sorted array in bl
mov si,offset arr3

up1:
cmp n,09h
 je n1
 mov bl,[si]
  inc n
  jmp up1
  n1:

 mov ah,4ch
 int 21h

code ends
end start
