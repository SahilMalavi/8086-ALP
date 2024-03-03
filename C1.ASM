.model small
.code
mov al,18h
mov bl,09h
div bl
mov dl,al

mov ah,2
int 21h

ends
end

