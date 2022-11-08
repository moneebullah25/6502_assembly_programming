	include "..\SrcALL\V1_Header.asm"		;Cartridge/Program header - platform specific
	include "\SrcAll\BasicMacros.asm"		;Basic macros for ASM tasks

	SEI						;Stop interrupts
	jsr ScreenInit			;Init the graphics screen
	jsr Cls			;Clear the screen

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Own Practice
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;testsym equ $67
;	lda #testsym
;	jsr monitor
;	jmp *
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Practice
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; lda #$64
	; jsr monitor
	; clc
	; adc #255 ; Adding 255 will subtract 1 from value
	; ldx #255
	; ldy #1
	; jsr monitor
	; jmp *
	
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Example 1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; lda #$69				;Load hex 69 into A
	; tax						;Copy A to X
	; tay						;Copy A to Y
	; sta $01					;Store to the $01 in the Zeropage the value of Accumulator
	; jsr monitor
	; dey						;Decrease Y by 1
	; inx						;Increase X by 1
	; clc						;Fake INCA - Clear Carry
	; adc #1					;Fake INCA - Add 1
	; jsr monitor
	; dex						;Decrease X by 1
	; iny						;Increase Y by 1
	; sec						;Fake DECA - Clear Carry
	; sbc #1					;Fake DECA - Add 1
	; jsr monitor
	
	; jsr MemDump
    ; word $0      			
    ; byte $1          		
	; inc $01					;Increase Zeropage $01
	; jsr MemDump
    ; word $0      			
    ; byte $1          		
	; dec $01					;Decrease Zeropage $01
	; jsr MemDump
    ; word $0      			
    ; byte $1          		
	
	 ; jmp *					;Infinite Loop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Example 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; ldx #4					;Set X to 3
; DecTestAgain:
	; jsr monitor
	; dex						;Decrease X by one
	; bne DecTestAgain  		;Jump back until Zero flag is set if x is 0 loops break

	; ldy #-5
; DecTest2:
	; jsr monitor
	; iny
	; bne DecTest2
	
	; jmp *					;Infinite Loop
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Example 3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; ldx #3					;Set X to 3
; DecTestAgain:
	; cpx #2					;See if X is 2
	; bne TestDone			;If it's NOT, go to TestDone label
	; jsr monitor				;Call the monitor - effectively this happens if X=2
; TestDone:	
	; dex						;Decrease X by one
	; bne DecTestAgain  		;Jump back until Zero flag is set
	; jmp *					;Infinite Loop

; Doing Same Thing with Accumulator
	; lda #3					;Set X to 3
; DecTestAgain:
	; cmp #2					;See if X is 2
	; bne TestDone			;If it's NOT, go to TestDone label
	; jsr monitor				;Call the monitor - effectively this happens if X=2
; TestDone:	
	; sec						;Decrease X by one
	; sbc #1
	; bne DecTestAgain  		;Jump back until Zero flag is set
	; jmp *					;Infinite Loop
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Example 4
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;lda #127					;Set X to 3	
	;cmp #0
	
	;bcs Jumped
	;bcc Jumped
	;beq Jumped
	;bne Jumped
	;bmi Jumped
	;bpl Jumped;
	
	;jmp *
	
	; bcc wrong				;A >= CMP
	; jsr monitor
; wrong:
	
	
	; ;bcc Jumped				;A < CMP
	
	; ; lda #3					;Set X to 3	
	; ; beq Jumped				;A=0
	; ; bne Jumped				;A!=0
	
	; ; lda #-1						;-1=255 -128=128
	; ; bpl Jumped				;A<128
	; ; bmi	Jumped				;A>=128
	; jmp *					;Infinite Loop
;Jumped:
	; jsr monitor
	; jmp *					;Infinite Loop
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Example 5
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	ldx #3
CaseAgain
	cpx #3
	beq Case3
	cpx #2
	beq Case2
	cpx #1
	beq Case1
	cpx #0
	beq Case0
CaseDone
	dex
	jmp CaseAgain
	
Case3:
	lda #"C"
	jsr PrintChar
	jmp CaseDone
Case2:
	lda #"B"
	jsr PrintChar
	jmp CaseDone	
Case1:
	lda #"A"
	jsr PrintChar
	jmp CaseDone
Case0:
	jmp *
	
	
	include "\SrcAll\monitor.asm"			;Debugging tools
	include "\SrcAll\BasicFunctions.asm"	;Basic commands for ASM tasks
	
Bitmapfont:									;Chibiakumas bitmap font
	ifndef BuildVIC
		incbin "\ResALL\Font96.FNT"		;Not used by the VIC due to memory limitations
	endif
	

	include "\SrcALL\V1_Functions.asm"	;Basic text to screen functions
	include "\SrcAll\V1_BitmapMemory.asm"	;Bitmap functions for Bitmap screen systems
	include "\SrcAll\V1_VdpMemory.asm"		;VRAM functions for Tilemap Systems
	include "\SrcALL\V1_Palette.asm"		;Palette functions
	include "\SrcALL\V1_Footer.asm"		;Footer for systems that need it
	
	
