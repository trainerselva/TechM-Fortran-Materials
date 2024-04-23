      PROGRAM LOOPS
C PROGRAM TO SIMULATE WHILE AND DO-WHILE LOOPS

C WHILE LOOP
      PRINT *, 'ENTER STARTING AND ENDING NUMBERS: '
      READ *, NFIRST, NLAST

      N = NFIRST
100   IF (N .GT. NLAST) THEN
        GOTO 300
      ELSE
        PRINT *, N
        N = N + 1
        GOTO 100
      ENDIF

300   CONTINUE 
      PRINT *, "AFTER STOP STATEMENT"
C -------------------
C SIMULATING DO-WHILE LOOP
C --------------------

      PRINT *, "SIMULATING DO-WHILE LOOP"
      PRINT *, "ENTER FIRST AND LAST NUMBERS"
      READ *, NFIRST, NLAST

      N = NFIRST
500   CONTINUE
        PRINT *, N
        N = N + 1
        IF (N .GT. NLAST) THEN
          GOTO 600
        ELSE
          GOTO 500
        ENDIF

600   STOP "DONE"       
      END PROGRAM