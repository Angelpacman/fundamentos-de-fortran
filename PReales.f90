program Reales

implicit none

!4 bytes (8 cifras significativas)
!real:: a,b,d
!4 bytes (8 cifras significativas)
!real(kind=4):: a,b,d
!8 bytes (16 cifras significativas)
!real(kind=8):: a,b,d
!8 bytes (16 cifras significativas)
!double precision::a,b,d

print*,"Este programa realiza operaciones con enteros"
print*,"Favor de ingresar a"
read*, a
print*,"Favor de ingresar b"
read*, b
print*,"La suma ed a+b es"
d=a+b
print*, d
print*,"La resta de a-b es"
d=a-b
print*, d
print*, "La multiplicaion de a*b es"
d=a*b
print*, d
print*,"La division de a/b es"
d=a/b
print*, d
print*,"a elevado a la b es"
d=a**b
print*, d

pause
end program
