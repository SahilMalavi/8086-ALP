.MODEL SMALL
.STACK 100h

.DATA
    value db 1100b  ; value to shift
    shift_amount Db 2   ; number of bits to shift
    res db 0
.CODE
    MOV AX, @DATA       ; set up data segment
    MOV DS, AX

    ; shift logical right without carry
    MOV AL, value       ; move value to AL register
    MOV cl, shift_amount ; move shift amount to CL register
    SHR Al, cl          ; shift right without carry
    mov res,AL
    ; result is now in AL register

    ; shift logical left without carry
    MOV AL, value       ; move value to AL register
    MOV CL, shift_amount ; move shift amount to CL register
    SHL AL, CL          ; shift left without carry
    mov res,al
    ; result is now in AL register

    ; shift logical left with carry
    MOV AL, value       ; move value to AL register
    MOV CL, shift_amount ; move shift amount to CL register
    RCL AL, CL          ; shift left with carry
    mov res,al
    ; result is now in AL register

    ; shift logical right with carry
    MOV AL, value       ; move value to AL register
    MOV CL, shift_amount ; move shift amount to CL register
    RCR AL, CL          ; shift right with carry
    mov res,al
    ; result is now in AL register

    MOV AH, 4Ch          ; exit program
    INT 21h
END
