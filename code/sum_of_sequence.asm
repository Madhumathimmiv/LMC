INPUT   INP 
        BRZ STOP
		ADD TOTAL
		STA TOTAL
		BRA INPUT
STOP 	LDA TOTAL
		OUT
		HLT	
TOTAL    DAT
