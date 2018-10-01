
program funcion
  implicit none

  integer :: i=5,l,m,n,p,q,o,a
  real :: r = 18.7010
  complex :: z=(2.9,1.3)

  !Casteos Reales
  !real convierte el valor entero a real
  print*, "Con real ", real (i)
  !dble convertir el valor entero a real con memoria de 8 bytes
  print*, "Con dble", dble(i)
  print*,"i", i

  !Casteos Enteros
  !int convierte a los numeros reales en enteros (numero sin
  print*, "Con INT: ", int (r)
  !int convierte a todos los numeros reales en enteros truncado
  print*, "Con NINT:", nint(r)
  print*, "r", r

  !Casteos Complejos
  !real te da parte real del numero complejo
  print*, "Parte real", real(z)
  !aimag te da la parte imaginaria del numero complejo
  print*, "Parte imaginara", aimag(z)
  !conjg te da el conjugado del numero complejo
  print*, "Conjugado", conjg(z)
  !cmplx convierte dos  numeros reales en un numero complejo
  print*, "el numero complejo formado por r,r es :"
  print*, cmplx(r,r)

  print*, "z",z

  print*, "la multiplicacion de r*i es"
  l=r*i
  print*, l

  print*, "la suma de r+z es"
  m=r+z
  print*, m

  print*, "la suma de z+l es"
  n=z+l
  print*, n

  print*, "la multipicacion de m*i es"
  q=m*i
  print*, q

  print*, "la division de q/n es"
  o=q/n
  print*, o

  print*, "la division de o/i es"
  p=o/i
  print*, p

  print*,"el resultado de la funcion es"
  a=p-(((r-i)/z)*(z*r))
  print*, a


end program
