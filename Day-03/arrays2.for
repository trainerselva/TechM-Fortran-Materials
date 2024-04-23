      PROGRAM ARR
      INTEGER MAT1
      DIMENSION MAT1(3,2)
      DATA MAT1/1, 2, 3, 4, 5, 6/

      PRINT *, MAT1

      DO 100 ICOL = 1, 3
        DO 200 IROW = 1, 2
            PRINT *,'ROW ',IROW,' COL ',ICOL,' VALUE ',MAT1(ICOL, IROW)
200     CONTINUE
100   CONTINUE            
      END PROGRAM