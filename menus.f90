program menus
implicit none

integer :: menu
   print*, "menu"
   print*, "hola k ase (1)"
   print*, "adios  (2)"

read*, menu
call system ("cis")
select case (menu)

case (1)
  print*, "hola k ase"

case (2)
  print*, "adios"

case default
  print*, "entrada incorrecta"

end select


end program menus
