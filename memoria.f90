program memoria
  implicit none
  real, dimension (:), allocatable :: v
  integer :: i,n
  print*, "inserte un valor entero"
  read*, n
  allocate(v(n))
  do i=1, n
    if(i==8 .or. i==20)cycle
    v(i)=i
  end do

  open(unit=10, file="prueba9.txt", status="replace", action="write")
  do i=1,n
    write(10,*), v(i)
  end do
  close(10)
  deallocate (v)
end program
