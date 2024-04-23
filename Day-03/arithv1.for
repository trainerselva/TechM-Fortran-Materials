      PROGRAM ARITH
C PROGRAM TO COMPUTE ARITHMETIC OPERATIONS

      IMPLICIT NONE
      INTEGER N1, N2
      REAL RESULT
      CHARACTER OPER

      PRINT 100, 'ENTER 2 INTEGERS'
100   FORMAT(A20)      
      READ 200, N1, N2
200   FORMAT(I2, X, I2) 
      PRINT 300, N1, N2
300   FORMAT('N1 = ', I2, ' N2 = ', I2)      
      PRINT *, 'ENTER AN ARITHMETIC OPERATOR'
      READ *, OPER
      PRINT *, 'OPERATOR = ', OPER

      IF ((OPER .EQ. '+') .OR. (OPER .EQ. '-') .OR. 
     1    (OPER .EQ. '*') .OR. (OPER .EQ. '/')) THEN
        PRINT *, 'THE OPERATOR IS VALID'
        IF (OPER .EQ. '+') THEN
          RESULT = N1 + N2
        ELSE IF (OPER .EQ. '-') THEN
            RESULT = N1 - N2
        ELSE IF (OPER .EQ. '*') THEN
            RESULT = N1 * N2
        ELSE
            RESULT = REAL(N1) / N2
        ENDIF
        PRINT 400, N1, OPER, N2, RESULT
400     FORMAT(I2,X,A,X,I2,' = ',F7.2)        
      ELSE 
        PRINT *, 'THE OPERATOR IS NOT VALID'
      ENDIF

      END PROGRAM