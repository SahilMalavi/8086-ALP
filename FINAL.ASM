.model small
.data
num1 db 10h
num2 db 20h
result dw ?            ;dw is used because multiplication will be 16 bit
.code
mov ax,@data      
mov ds,ax             ;Initialize data segment
mov al,num1       
mov bl,num2
mul bl                   ;content in bl directly multiply with al
mov result,ax        ;move multiplication in ax register to result variable
ends
end