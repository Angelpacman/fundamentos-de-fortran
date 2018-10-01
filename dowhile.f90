program dowhile
implicit none
integer :: i
open(unit=10, file="prueba7.txt", status="new", action="write")
  i=1
  do while (i<=19.and.i>=i)
  write(10,*) i
  i=i+1
end do
 close(10)


pause
end program dowhile
