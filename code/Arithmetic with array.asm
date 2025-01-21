   LDA  THREE
        STA N
		LDA TWO
		STA M
  INPUT INP
        ADD TOTAL
        STA TOTAL
        LDA N
        SUB ONE
        STA N
        BRZ SUBTRACT
        BRA INPUT
SUBTRACT  INP
	    	STA NUM
		    LDA TOTAL
		    SUB NUM
		    STA TOTAL
        LDA M
		    SUB ONE
		    STA M
		    BRZ DISP
		    BRA SUBTRACT
DISP 	  LDA TOTAL
		    OUT
TWO   DAT 2
THREE	DAT 3
N     DAT
M 	  DAT
NUM 	DAT
ONE   DAT 1
TOTAL DAT
