.model small
add1 macro a,b,r
 mov al,a
 add al,b
 mov r,al
endm

sub1 macro a,b,r
 mov al,a
 sub al,b
 mov r,al
endm

mul1 macro a,b,r
mov al,a
mul b
mov r,al
endm
.data
num1 db 12h
num2 db 10h
resA db ?
resS db ?
res db ?
.code
mov ax,@data
mov ds,ax
add1 num1,num2,resA
sub1 num1,num2,resS
mul1 resA,resS,res
ends
end
