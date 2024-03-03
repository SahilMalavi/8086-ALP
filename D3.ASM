.model small
.data
di1 dw 1001h
d db 10h
quo db 0
rem db 0
.code
mov ax,@data
mov ds,ax
mov ax,di1
mov bl,d
div bl
mov quo,al
mov rem,ah
ends
end
