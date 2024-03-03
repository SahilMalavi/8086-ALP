data segment
str1 db 'sahil$'
count db 0
data ends
code segment
start:
Assume cs:code, ds:data
mov ax,data
mov ds,ax
mov si,offset str1
up:
 mov al,[si]
 cmp al,'$'
 je next
  inc count
 inc si
 jmp up
 next:
mov al,count 
code ends
end start
