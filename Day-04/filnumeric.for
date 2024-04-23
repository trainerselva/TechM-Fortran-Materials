      PROGRAM FILNUM
      INTEGER I
      REAL R
      CHARACTER C
      
      DATA I,R,C/45,2.77,'X'/

      OPEN(UNIT=2, FILE='MYDATA')
      WRITE(2,100) I,R,C
100   FORMAT(1X,I5,F8.3,A)      
      CLOSE(2)

      OPEN(UNIT=3, FILE='MYDATA')
      READ(3,100) I,R,C
      PRINT *, 'I=',I,'R=',R,'C=',C
      CLOSE(3)

      END PROGRAM