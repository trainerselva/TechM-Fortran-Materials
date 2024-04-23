      PROGRAM MATRIX
      INTEGER NRA, NCA, NRB, NCB, NRC, NCC
      PARAMETER (NRA=2, NCA=2, NRB=2, NCB=2, NRC=2, NCC=2)
      INTEGER A(NRA,NCA), B(NRB,NCB), C(NRC,NCC)
C      DATA A/1,2,3,4/, B/5,6,7,8/
      A(1,1)=1
      A(1,2)=2
      A(2,1)=3
      A(2,2)=4

      B(1,1)=5
      B(1,2)=6
      B(2,1)=7
      B(2,2)=8

      PRINT *, 'MATRIX A'
      CALL PRNMAT(A,NRA,NCA)

      PRINT *, 'MATRIX B'
      CALL PRNMAT(B,NRB,NCB)

      CALL MATMUL(A, B, C, NRA, NCA, NRB, NCB, NRC, NCC)
      PRINT *, 'MATRIX C'
      CALL PRNMAT(C,NRC,NCC)

      CALL MATTRN2(C, NRC, NCC)
      PRINT *, 'AFTER TRANSPOSE MATRIX C'
      CALL PRNMAT(C,NRC,NCC)

      END PROGRAM

      SUBROUTINE PRNMAT(MAT, ROWS, COLS)
      INTEGER ROWS, COLS
      INTEGER MAT(ROWS, COLS)
      
      DO I = 1,ROWS
        PRINT *, (MAT(I,J), J=1,COLS)
      END DO
      END SUBROUTINE

      SUBROUTINE MATMUL(A, B, C, NRA, NCA, NRB, NCB, NRC, NCC)
        INTEGER A(NRA,NCA), B(NRB,NCB), C(NRC,NCC)
        IF (NCA .NE. NRB) THEN
            PRINT *, 'MATRICES ARE NOT COMPATIBLE FOR MULTIPLICATION'
            RETURN
        ENDIF
        IF ((NRA .NE. NRC) .OR. (NCB .NE. NCC)) THEN
            PRINT *, 'RESULT MATRIX IS NOT OF THE RIGHT SIZE'
            RETURN
        ENDIF

        DO I = 1, NRA
            DO J = 1, NCB
                C(I, J) = 0
                DO K = 1, NCB
                    C(I,J) = C(I,J) + A(I,K)*B(K,J)
                END DO
            END DO
        END DO
      END SUBROUTINE

    !   SUBROUTINE MATTRN(A, NRA, NCA)
    !   INTEGER A(NRA,NCA) 
    !   INTEGER TMP(NRA,NCA)

    !   DO I = 1, NRA
    !     DO J = 1, NCA
    !         TMP(I,J) = A(I,J)
    !     END DO
    !   END DO

    !   DO I = 1, NRA
    !     DO J = 1, NCA
    !         A(I,J)=TMP(J,I)
    !     END DO
    !   END DO
    !   END SUBROUTINE

      SUBROUTINE MATTRN2(A, NRA, NCA)
      INTEGER A(NRA,NCA)
      INTEGER TMP 
  
      DO I = 1, NRA
        DO J = I+1, NCA
            TMP = A(I,J)
            A(I,J)=A(J,I)
            A(J,I)=TMP
        END DO
      END DO
      END SUBROUTINE      