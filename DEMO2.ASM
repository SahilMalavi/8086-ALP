.model small
.data
; use define word(dw) for 16 bit numbers
num1 dw 1020h    ;Initialize/ load 1020h to num1 
num2 dw 0080h    ;Initialize/ load 0080h to num2
res dw 0         ;res variable for storing result
.code
mov ax,@data
mov ds,ax
mov ax,num1   ;moving value of num1 to ax
add ax,num2   ;Adding num2 with ax(num1)
mov res,ax    ;result store in ax, so move in res(optional) 
ends
end

