      PROGRAM PARAM

C IN FORTRAN 77 A CONSTANT IS DEFINED USING
C PARAMETER STATEMENT

      REAL PI, RADIUS, AREA
C      PARAMETER (PI = 3.1415926)
      PARAMETER (PI = 4.0 * ATAN(1.0), TWOPI = 2.0 * PI)

      PRINT *, "ENTER RADIUS OF CICLE:"
      READ *, RADIUS
      AREA = PI * (RADIUS ** 2)
      PRINT *, "AREA OF CIRCLE = ", AREA

      PRINT *, "VALUE OF PI IS ", PI
      END PROGRAM