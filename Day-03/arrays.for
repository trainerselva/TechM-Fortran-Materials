      PROGRAM ARRAYS
      INTEGER MYARY
      DIMENSION MYARY(10)
      INTEGER ARY2(-2:2), SUMARY
C      DIMENSION ARY2(-2:2)
      DATA ARY2/-10, -5, 0, 1, 4/
      DATA MYARY/1, 2, 3, 4, 5, 6, 7, 8, 9, 10/
      
      PRINT *, MYARY
      PRINT 100, MYARY
100   FORMAT(10(I2,X))  
      
      PRINT*, MYARY(5)
      PRINT *, MYARY(3:6)

      PRINT *, ARY2

      PRINT *, 'SUM OF MYARY', SUMARY(MYARY, 10)

      END PROGRAM

      INTEGER FUNCTION SUMARY(ARY, SZ)
      
      INTEGER ARY, SZ
      DIMENSION ARY(SZ)
      SUMARY = 0
      DO 111 I = 1, SZ
        SUMARY = SUMARY + ARY(I)
111   CONTINUE        

      END