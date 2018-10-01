program do2
implicit none
integer :: i
    open(unit=0, file="prueba2.txt",status="new" , action="write")
    do i=1, 1000,5
      write (10,*)i
    end do
    close(unit=0)


  end program do2
