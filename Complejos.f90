program Complejos

implicit none

!complex:: z1,z2,z3
!complex(kind=4):: z1,z2,z3
!complex(kind=8):: z1,z2,z3
Double complex:: z1,z2,z3
real::a,b
!real(kind=8):: a,b


print*, "Esteprograma realiza operaciones basicas con numeros complejos"


print*, "favor de ingresar z1"
read*, z1
!lectura de z1 (real,imaginario)


print*, "Favor de ingresar el valor real de z2"
read*, a
print*, "favor de ingresar el valor imaginario de z2"
read*, b

z2=cmplx(a,b)

print*, "la suma de z1+z2 es"
z3=z1+z2
print*, z3

print*, "la resta de z1-z2 es"
z3=z1-z2
print*, z3

print*, "la multiplicacion de z1*z2 es"
z3=z1*z2
print*, z3

print*, "la división de z1/z2 es"
z3=z1/z2
print*, z3

print*, "el producto escalar de 5 * z1 es"
z3=5.0*z1
print*, z3

PAUSE
end program Complejos