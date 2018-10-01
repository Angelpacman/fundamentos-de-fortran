  program logicas

  implicit none
  logical :: a,b,c

  a = .true.
  b = .false.
  !NOT

  print*, .not.(a)
  print*, .not.(5<6)
  print*, .not..true.

  !OR
  print*, "......................................."
  print*, "OR"
  print*, "Dos: ", .true..or..true.
  print*, "Tres: ", .false..or..false..or..true.

  !AND

  print*, "......................................."
  print*, "Dos: ", .false..and..true.
  print*, "Dos: ", .true..and..true.
  print*, "Tres: ", .false..and..false..and..true.
  print*, "Tres: ", .true..and..true..and..true.

  !EQV

  print*, "......................................."
  print*, "EQV"
  print*, "False: ", .false..eqv..false.
  print*, "True: ", .true..eqv..true.

  !NEQV
  print*, "......................................."
  print*, "NEQV"
  print*, "False: ", .false..neqv..false.
  print*, "True: ", .true..neqv..true.

  !Combinadas

  print*, "......................................."
  print*, "Combinadas"
  print*, "Resultado 1: " , (.not.(5<3)).and.(7>1)
  print*, "Resultado 2: " , ((5>6).eqv.(6>10)).and.(4>3.or..false.)&
  &.and.(5>10.or.10>100)

  end program logicas
