      PROGRAM MATRIX
      INTEGER A(2,2)
      DATA A/1, 2, 3, 4/
      PRINT *, A

      DO I = 1, 2
        DO J = 1, 2
            PRINT *, A(I,J)
        END DO
      END DO

      PRINT *,'==========='
      DO I = 1, 2
        PRINT *, (A(I,J), J = 1, 2)
      END DO

      PRINT *, '============'
      PRINT 100, A
100   FORMAT(4(I3,','))      

      PRINT *, '============'
      PRINT 200, A
200   FORMAT(4(I3:','))      

      END PROGRAM