program do1
implicit none
integer :: i
    open(unit=0, file="prueba1.txt",status="new" , action="write")
    do i=1, 1000
      write (10,"(BB)")i
    end do
    close(unit=0)

    pause

  end program do1
