program casteos
implicit none

integer :: i=3
real :: a = 23.9030
complex :: z=(4.5,1.6)

!Casteos Reales
!real convierte el valor entero a real
print*, "Con real ", real (i)
!dble convertir el valor entero a real con memoria de 8 bytes
print*, "Con dble", dble(i)
print*,"i", i

!Casteos Enteros
!int convierte a los numeros reales en enteros (numero sin
print*, "Con INT: ", int (a)
!int convierte a todos los numeros reales en enteros truncado
print*, "Con NINT:", nint(a)
print*, "a", a

!Casteos Complejos
!real te da parte real del numero complejo
print*, "Parte real", real(z)
!aimag te da la parte imaginaria del numero complejo
print*, "Parte imaginara", aimag(z)
!conjg te da el conjugado del numero complejo
print*, "Conjugado", conjg(z)
!cmplx convierte dos  numeros reales en un numero complejo
print*, "el numero complejo formado por a,a es :"
print*, cmplx(a,a)

print*, "z",z

end program casteos
