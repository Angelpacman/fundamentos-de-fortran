program chicharronera2
! ------------------------------------------------------------------
! en este programa se calculan las raíces de la ecuación cuadrática ax**2+bx+c=0
! ------------------------------------------------------------------
! Declaración de los tipos tipos
! ------------------------------------------------------------------
implicit none
real :: a,b,c
! coeficientes de la ecuación
real :: discr
! discriminante de la ecuación
real :: x1,x2
! variables para las posibles soluciones soluciones
real :: term, den


! Entrada de datos

write (*,*)"Ingrese coeficientes a,b,c de una ecuacion cuadratica de la forma ax²+bx+c=0 con una coma entre ellos ejemplo: 4,9,6"
read(*,*) a,b,c
    if( a == 0 ) then
    write(*,*) "La ecuación no tiene término cuadrático"
    stop
    endif

! Bloque de procesamiento y salida

discr = b**2 - 4.0*a*c
den = 2.0*a
term = SQRT(ABS(discr))
if (discr >= 0 ) then
    x1 = (-b+term)/den
    x2 = (-b-term)/den

    print*, "a continuación se muestran las raices de la ecuación"
    write(*,*) "x1 = ", x1
    write(*,*) "x2 = ", x2
else
    x1 = -b/den
    x2 = term/den
print*, "a continuación se muestran las raices con su parte real e imaginaria"
  write(*,*) "x1 = (", x1, " ,", x2, ")"
  write(*,*) "x1 = (", x1, " ,", -x2, ")"
endif
stop

end program chicharronera2
