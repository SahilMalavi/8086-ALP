.model small
.data
dividend db 23h
divisor db 12h
que db 0
rem db 0
res db 0              
.code
mov ax,@data
mov ds,ax
mov al,dividend
cbw
div divisor

mov que,al
mov rem,ah

ends
end

