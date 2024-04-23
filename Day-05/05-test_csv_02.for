      PROGRAM TSTCSV
        CHARACTER*80 LINE
        CHARACTER*30 INFIL, OUTFIL
        CHARACTER*30 INFMT, OUTFMT

        INFIL = 'DATA.CSV'
        OUTFIL = 'OUT.TXT'

        INFMT = '(I2,X,I2,X,I2)'
        OUTFMT = '(F5.2,''#'',F5.2,''#'',F5.2)'

        OPEN(UNIT=20, FILE=INFIL, STATUS='OLD')
        OPEN(UNIT=21, FILE=OUTFIL, STATUS='NEW')

123     READ(20,'(A)',IOSTAT=IOS) LINE
        IF (IOS .NE. 0) THEN
            GOTO 555
        ENDIF
        PRINT *, LINE

        READ(LINE,INFMT) N1,N2,N3
        PRINT *, N1, N2, N3
        WRITE(21, OUTFMT) REAL(N1), REAL(N2), REAL(N3)
        GOTO 123

555     CONTINUE
        CLOSE(20)  
        CLOSE(21)      
      END PROGRAM