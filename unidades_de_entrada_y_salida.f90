program unidades

implicit none
integer :: edad
character(len=1000) :: nombre, uno, dos, tres, cuatro

print *, "Dame tu edad: "
read *, edad

print *, "Dame tu primer nombre"
read *, nombre


!STATUS='new' crea un nuevo archivo dentro de la carpeta donde estamos trabajando
! si dentro de la carpeta ya exite manda error, porque no lo puede guardar

open(10,FILE='texto.txt',STATUS='new')
write(10,*)"Hola mundo del texto"
write (10, *) "Tu nombre  es: ", nombre
write (10,*) "Tienes", edad , " años "
close(10)
read*,

!STATUS='OLD' revisa y trabaja con el archivo, si el archivo no existe manda error

open(10,FILE='texto1.txt',STATUS='OLD')
write(10,*)"Hola mundo del texto"
write (10, *) "Tu nombre  es: ", nombre
write (10,*) "Tienes", edad , " años "
close(10)
read*,

!STATUS='UNKNOWN' revisa si existe y crea uno nuevo si es que no y si existe lo reescribe

open(10,FILE='texto2.txt',STATUS='UNKNOWN')
write(10,*)"Hola mundo del texto"
write (10, *) "Tu nombre  es: ", nombre
write (10,*) "Tienes", edad , " años "
close(10)
read*,

!STATUS='SCRATCH' CREA un archivo temporal que se borra al momento que se cierra tu programa

open(10,STATUS='SCRATCH')
write(10,*)"Hola mundo del texto"
write (10, *) "Tu nombre  es: ", nombre
write (10,*) "Tienes", edad , " años "
close(10)

read*,

open(10,FILE='texto47.txt')
read(10,*) uno, dos,  tres, cuatro
print*, uno,dos,tres,cuatro
read(10,*) uno, dos,  tres, cuatro
print*, uno,dos,tres,cuatro
close(10)


end program unidades
