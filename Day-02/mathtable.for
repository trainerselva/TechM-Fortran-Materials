      PROGRAM MATTBL
      N1 = 2
      N2 = 4

      DO 100 ITAB = N1, N2
        DO 100 I = 1, 10
            PRINT 555, ITAB, I, ITAB*I
555         FORMAT(I2, ' X ', I2, ' = ', I3)            
100   CONTINUE 

      NVAL = 123
      PRINT 35, NVAL
35    FORMAT('NVAL IS ', I2)    

      END PROGRAM