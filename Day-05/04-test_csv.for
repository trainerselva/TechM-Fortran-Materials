      PROGRAM TSTCSV
        CHARACTER*80 LINE
        CHARACTER*30 FILNAM

        FILNAM = 'DATA.CSV'
        OPEN(UNIT=20, FILE=FILNAM, STATUS='OLD')

123     READ(20,'(A)',IOSTAT=IOS) LINE
        IF (IOS .NE. 0) THEN
            GOTO 555
        ENDIF
        PRINT *, LINE

        READ(LINE,'(I2,X,I2,X,I2)') N1,N2,N3
        PRINT *, N1, N2, N3
        GOTO 123

555     CONTINUE
        CLOSE(20)        
      END PROGRAM