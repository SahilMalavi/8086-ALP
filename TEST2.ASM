.model small
        .data
        arr db 1h,2h,3h,4h,5h
        even_c db ?
        odd_c db ?
        
        pos_c db ?
        neg_c db ?
        
        one_c db ?
        zero_c db ?

        sum_series db ?
        msb db ?
        .code
        mov ax,@data
        mov ds,ax
        mov si,offset arr
        
        call evenodd
        mov al,even_c
        mov bl,odd_c
        call posneg
        mov al,pos_c
        mov bl,neg_c
        call onezero
        mov al,one_c
        mov bl,zero_c
        call sum_s
        mov al,sum_series
        
        evenodd proc
         mov cl,05h
         up:
          mov al,[si]
          ror al,1
          jc next      
          inc even_c
          jmp up1
          next:      
          inc odd_c
          up1:
          inc si
          dec cl       
          jnz up
         ret 
         evenodd endp
         
         posneg proc
         mov si,offset arr
         mov cl,05h
         up2:
          mov al,[si]
          rol al,1
          jc next1
           inc pos_c
          jmp up3
          next1:
           inc neg_c
          up3:
          inc si
          dec cl
          jnz up2      
          ret
          posneg endp
          
          onezero proc
           mov si,offset arr
           mov al,[si] ;first number in array
           mov cl,8
           up5:
           rol al,1
           jc next2
            inc zero_c
            jmp up4
            next2:
            inc one_c
            up4:
            dec cl 
            jnz up5    
            ret
            onezero endp
            
            sum_s proc    ;sum of series 
            mov si,offset arr
            mov cl,05h
             ; array madhil first number yenar al madhye[1]
            up6:
                  ; array madhil 2nd number ghenar
            mov al,[si]
             add sum_series,al   ;first + 2nd = al
             jnc next4
              inc msb
              next4:
              inc si
              dec cl
              jnz up6
          
              ret
             sum_s endp  
                
        ends
        end
