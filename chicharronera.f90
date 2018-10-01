program chicharronera

implicit none

!este programa resueelve una ecuacion cuadratica simple de
!la forma: ax²+bx+c=0

integer:: a,b,c,x
real :: den,discr,term,x1,x2

print*, "favor de ingresar a"
read*, a

print*, "favor de ingresar b"
read*, b

print*, "favor de ingresar c"
read*, c

WRITE(*,*), "Ingrese coeficientes a,b,c"
READ(*,*) a,b,c
IF( a == 0 ) THEN
WRITE(*,*) "La ecuación no tiene término cuadrático"
STOP
ENDIF

discr = b**2 - 4.0*a*c
den = 2.0*a
term = SQRT(ABS(discr))
IF (discr >= 0 ) THEN
x1 = (-b+term)/den
x2 = (-b-term)/den
WRITE(*,*) "x1 = ", x1
WRITE(*,*) "x2 = ", x2

ELSE
x1 = -b/den
x2 = term/den

WRITE(*,*) "x1 = (", x1, " ,", x2, ")"
WRITE(*,*) "x1 = (", x1, " ,", -x2, ")"
ENDIF

STOP
END PROGRAM chicharronera
