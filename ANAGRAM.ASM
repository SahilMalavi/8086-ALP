.model small

.data

Str1 db 'listen$'

Str2 db 'silent$'

n_count db 0

Count_s db 0

Count_d db 0

temp db 0

Msg1 db 'OUTPUT: Anagram$ '

Msg2 db 'OUTPUT: Not an Anagram$'

.code 

Mov ax,@data

Mov ds , ax

mov cl,50



;-----------Count length of the source---------


mov si,offset str1

next:

mov al, [si]

cmp al,'$' 

je exit

inc si
 
inc count_s 

jmp next
 

exit:

;---Count length of the Destination string--

mov si,offset str2

next1:

 mov al ,[si]

cmp al , '$'

Je exit1

Inc si 

Inc count_d

Jmp next1 


Exit1:


;-------compare length of both string----------

 
Mov al ,count_s

Cmp al ,count_d

Jne exit2


Mov si , offset str1

Mov di, offset str2


;-------------compare char by char ----------------


up:
 
Mov al,[si]

 Cmp al,[di]
 
Jne next2 

 Inc si

 mov di,offset str2

 mov temp,06h
 
Cmp bl,temp

je go
 
dec count_s


 Jnz up

next2:
 

 Inc di

cmp di,14h

 je go1

 Dec cl

jnz up

 go:

; ---------print strings are anagram------------


Mov ah ,09h

lea dx ,msg1 

Int 21h

Jmp exit3
 

;--------print strings are not anagram--------

go1:

Exit2:

Mov ah , 09h

Lea dx , msg2

 Int 21h 


Exit3:
 
Mov ah , 4ch

 int 21h

 
Ends
 
End
