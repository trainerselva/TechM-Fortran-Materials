      PROGRAM TEST
        CHARACTER*20 FRMT, FRMT2
        N = 245
        FRMT = 'I4'
        FRMT2 = '(I4)'
!         PRINT 100, N
! 100     FORMAT(FRMT)        
        WRITE(*, '(' // FRMT // ')') N
        WRITE(*, FRMT2) N
      END PROGRAM