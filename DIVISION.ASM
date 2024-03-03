.model small
.data
n1 db 20h
n2 db 05h
.code    
mov bh,n2
mov al,n1

div bh
ends
end
