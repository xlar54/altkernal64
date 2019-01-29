*=$a000

		LDY #$00
next	LDA txtmsg, y
		cmp #$00
		beq done
		jsr $ffd2
		iny
		jmp next
done	
		jmp done
		
txtmsg:
.text "booted new kernal!"
.byte $00