      PROGRAM FUNSUB
      INTEGER ADD, SUBTRACT
      INTEGER S, D
      INTEGER*8 POW
      PRINT *, "ENTER 2 INTEGERS TO ADD"
      READ *, I, J
      K = ADD(I, J)
      KSUB = SUBTRACT(I, J)
      PRINT *, 'SUM IS: ', K
      PRINT *, "DIFFERENCE IS: ", KSUB

      CALL ARITH1(I, J)

      CALL ARITH2(I, J, S, D)
      PRINT *, 'S = ', S
      PRINT *, 'D = ', D

      PRINT *, "2 POWER 5 IS: ", 2**5

      
      POW = 2 ** 2 ** 3
      PRINT *, "2 power 2 power 3 ", POW

      END PROGRAM

      INTEGER FUNCTION ADD(N1, N2)
        INTEGER RESULT, N1, N2
        RESULT = N1 + N2
        ADD = RESULT
      END

      INTEGER FUNCTION SUBTRACT(N1, N2)
        SUBTRACT = N1 - N2
      END 

      SUBROUTINE ARITH1(N1, N2)
        INTEGER N1, N2
        INTEGER SM, DF
        SM = N1 + N2
        DF = N1 - N2
        PRINT *, 'SM = ', SM
        PRINT *, 'DF = ', DF
      END  

      SUBROUTINE ARITH2(N1, N2, SUM, DIFF)
        INTEGER N1, N2, SUM, DIFF
        SUM = N1 + N2
        DIFF = N1 - N2
      END