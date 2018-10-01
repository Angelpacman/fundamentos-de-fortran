program calculadora
  implicit none
  integer :: menu,f,i
  real :: a,b,c,d
  ! coeficientes de la ecuación
  real :: discr, discr2, discr3, discr4
  ! discriminantes de la ecuación
  real :: x1,x2,z1
  ! variables para las posibles soluciones soluciones
  real :: term, den
  real(kind=8) :: facto
  complex:: z2,z3,part1

  print*, "Elija el numero de las siguientes opciones para realizar una operación"
  print*, "realizar una ecuación cuadratica de la forma ax²+bx+c=0 --------------(1)"
  print*, "realizar una ecuación de tercer grado de la forma  ax³+bx²+cx+d=0 ----(2)"
  print*, "obtener el factorial de un numero entero -----------------------------(3)"

  read*, menu
  call system ("cis")
  select case (menu)


  case (1)
    ! Entrada de datos
    write (*,*) "Ingrese coeficientes a,b,c de una ecuacion de la forma ax²+bx+c=0 con una coma entre ellos ejemplo: 4,9,6"
    read(*,*) a,b,c
      if( a == 0 ) then
      write(*,*) "La ecuación no tiene término cuadrático"
      stop
      endif

    ! Bloque de procesamiento y salida
    discr = b**2 - 4.0*a*c
    den = 2.0*a
    term = sqrt(abs(discr))
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

  case (2)
    write (*,*) "Ingrese coeficientes a,b,c,d de una ecuacion de la forma ax³+bx²+cx+d=0 ejemplo: 2,6,3,8"
    read(*,*) a,b,c,d
    part1 = -b/3*a
    discr2= -(b**2) + 3*a*c
    discr3= -2*(b**3) + 9*a*b*c - (27*(a**2))*d
    discr4=(discr3 + sqrt(4*(discr2**3)+discr3**2))**(1/3)
    z1=part1+(((2**1/3)*discr2)/(discr4*3*a))+discr4/(a*(32**(1/3)))
    z2=part1+(((1+i*(3**(1/2)))*discr2)/(a*(32**(2/3))*discr4))-((discr4*(1-i*(3**(1/2))))/(a*(62**1/3)))
    z3=part1+(((1-i*(3**(1/2)))*discr2)/(a*(32**(2/3))*discr4))-((discr4*(1+i*(3**(1/2))))/(a*(62**1/3)))
    write(*,*) "z1 = ", z1
    write(*,*) "z2 = ", z2
    write(*,*) "z3 = ", z3
    stop

  case (3)
    print*, "este programa calcula el factorial de cualquier numero entero"
    print*, "Ingrese un numero entero"
    read*, i
    f=1
    facto=0
    do while(f<=i)
      facto=i*(i-1)+facto
      f=f+1
    end do
    print*, facto

  case default
    print*, "entrada incorrecta"

  end select
end program calculadora
