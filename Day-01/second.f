      PROGRAM SECOND
      LOGICAL L1, L2
      DOUBLEPRECISION DPI
      REAL*8 RPI
      COMPLEX C1, C2, C3

      L1 = .TRUE.
      L2 = .FALSE.
      PRINT *, "L1 = ", L1
      PRINT *, "L2 = ", L2
      PI = 3.14159
      PRINT *, "PI = ", PI

      DPI = 4 * ATAN(1.0)
      PRINT *, "DPI = ", DPI

      RPI = 4 * ATAN(1.)
      PRINT *, "RPI = ", RPI

      C1 = (2, 3)
      PRINT *, "C1 = ", C1

      C2 = (1, -2)
      PRINT *, "C2 = ", C2

      C3 = C1 - C2
      PRINT *, "C3 = ", C3

      PRINT *, "REAL PART OF C3 = ", REAL(C3)
      PRINT *, "IMAGINARY PART OF C3 = ", IMAG(C3)

      END PROGRAM
      