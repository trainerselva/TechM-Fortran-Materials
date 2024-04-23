      PROGRAM MATRIX
        INTEGER A, B, C
        INTEGER NROWS, NCOLS
        INTEGER NR, NC
        PARAMETER (NR = 2, NC = 2)
        DIMENSION A(NR, NC), B(2, 2), C(2, 2)
        DATA A/1, 2, 3, 4/, B/6, 7, 8, 9/, C/4*0/
        DATA NROWS, NCOLS /NR, NC/
        COMMON /MATRICES/A, B, C
        COMMON /ROWCOL/NROWS, NCOLS


        PRINT *, 'MATRIX A = ', A
        PRINT *, 'MATRIX B = ', B

        CALL MATADD(A, B, C, NROWS, NCOLS)
        PRINT *, 'MATRIX C = ', C

        CALL MATSUB(NROWS, NCOLS)
        PRINT *, 'MATRIX C AFTER SUBTACTION = ', C


      END PROGRAM

      SUBROUTINE MATADD(X, Y, Z, ROWS, COLS)
        INTEGER X, Y, Z, ROWS, COLS
C      DIMENSION X(*,*), Y(*,*), Z(*,*)
        DIMENSION X(ROWS, COLS), Y(ROWS, COLS), Z(ROWS, COLS)
        
        DO 100 IRW = 1, ROWS
          DO 200 ICL = 1, COLS
              Z(IRW, ICL) = X(IRW, ICL) + Y(IRW, ICL)
  200     CONTINUE
  100   CONTINUE            
        END

      SUBROUTINE MATSUB(ROWS, COLS)
      INTEGER ROWS, COLS
      INTEGER X, Y, Z
      COMMON /MATRICES/X, Y, Z
C      COMMON /ROWCOL/ROWS, COLS
C      PARAMETER (NROWS = ROWS, NCOLS = COLS)
      DIMENSION X(ROWS, COLS), Y(ROWS, COLS), Z(ROWS, COLS)

      DO 100 IRW = 1, ROWS
        DO 200 ICL = 1, COLS
            Z(IRW, ICL) = X(IRW, ICL) + Y(IRW, ICL)
200     CONTINUE
100   CONTINUE            
      END
        