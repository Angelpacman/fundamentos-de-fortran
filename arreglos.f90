program arreglos
implicit none
!real, dimension(3) :: v
!integer, dimension(3) :: m
!cmplex, dimension (2) :: z

real, dimension(1:3) :: v
integer, dimension(1:3) :: m
complex, dimension(1:2) :: z

real, dimension(2,2) :: v1
integer, dimension(2,2) :: m1
complex, dimension(2,2) :: z1

!real, dimension(1:2,1:2) :: v1
!integer, dimension(1:2,1:2) :: m1
!cmplex, dimension(1:2,1:2) :: z1

v(1)=2.45
v(2)=6.45
v(3)=12.45

m(1)=45
m(2)=25
m(3)=70

z(1)=cmplx(v(1),m(1))
z(2)=cmplx(v(2),m(2))

print*,"El vector v es:"
print*,v
print*,"----------------------------------------------------"
print*,"El vector m es:"
print*,m
print*,"----------------------------------------------------"
print*,"El vector z es:"
print*,z

v1(1,1)=2.1
v1(1,2)=6.45
v1(2,1)=7.45
v1(2,2)=15.45

m1(1,1)=2
m1(1,2)=6
m1(2,1)=7
m1(2,2)=15

z1(1,1)=cmplx(v1(1,1),m1(2,1))
z1(1,2)=cmplx(v1(2,1),m1(1,2))
z1(2,1)=cmplx(v1(2,1),m1(1,2))
z1(2,2)=cmplx(v1(1,2),m1(2,1))

print*,"----------------------------------------------------"
print*,"La matriz v1 es:"
print*,v1
print*,"----------------------------------------------------"
print*,"La matriz m1 es:"
print*,m1
print*,"----------------------------------------------------"
print*,"La matriz z1 es:"
print*,z1
pause
end program arreglos
