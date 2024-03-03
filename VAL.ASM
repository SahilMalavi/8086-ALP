.model small 
.data
arr1 db 10h,07h,02h,05h,03h
oddarr db 3 dup(0) 
evenarr db 3 dup(0) 
oddadd db 0h 
evenadd db 0h 
.code 
mov ax,@data 
mov ds,ax

lea bx,arr1 
lea si,oddarr 
lea di,evenarr 

mov cx,5
mov bx,offset arr1
l1:    
 mov al,[bx]
 ror al,1
 jnc down    
 mov dl,[bx]
 mov [si],dl    ;mov odd element in oddarr array
inc bx
inc si
 jc go
down:
 mov al,[bx]     ;mov even element in evenarr array
 mov [di],al
 inc di
 inc bx
go:

 dec cx
jnz l1


;add element in oddarr
mov cl,2
mov si,offset oddarr
mov al,[si]
up:
inc si
 add al,[si]
 mov oddadd,al
dec cl
jnz up

;add element in evenarr
mov cl,2
mov di,offset evenarr
mov al,[di]
up1:
inc di
 add al,[di]
 mov evenadd,al
dec cl
jnz up1

mov ah,09h
int 21h
ends
end 
