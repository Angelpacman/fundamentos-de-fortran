program Unidades
implicit none 

integer:: x

!STATUS='new' crea un nuevo archivo dentro de la carpeta donde estamos trabajando
! si dentro de la carpeta ya exite manda error, porque no lo puede guardar
!STATUS='old' revisa y trabaja con el archivo, si el archivo no existe manda error
!STATUS='UNKNOWN' revisa si existe y crea uno nuevo si es que no y si existe lo reescribe 
!STATUS='SCRATCH' CREA un archivo temporal que se borra al momento que se cierra tu programa


open(unit=10,file='Unidades.txt', Action='write',status='replace')
open(unit=20,file='funcion.txt', Action='read',status='old')


read(20,*) x

write(10,*)x

pause 
end program Unidades