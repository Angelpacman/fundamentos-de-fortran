PROGRAM formatos

	!Enteros 
	! I#  -> Cantidad de enteros 
	write(*,"(I5)") 123
	write(*,"(I5)") 123456
	!Binarios
	write(*,'(B8)') 7
	!Octal
	write(*,'(O8)') 8
	!Hexadecimal
	write(*,'(Z8)') 10

	! REAL
	write(*,'(F6.2)') 303.2
	!303.20 El primer valor que esta al lado de la F es el total que 
	!numero que va a imprimir (toma en cuenta los enteros, el punto descimal
	! y los decimales) , el numero despues del punto representa el numero
	! de decimales que tomara encuenta

	!Exponencial
	write(*,'(E10.3)') 303.2
	!Cientifica
	write(*,'(ES10.3)') 303.2
	! Ingenieril
	write(*,'(EN12.3)') 303.2

	!print(" %c %d", cadena, numero)

	!Caracteres A
	write(*,'(A)') "Hola mundo"
	write(*,'(A4 ,5X,"letras",I10)') "Hola mundo" , 29
	write(*,'(A,/,A)') "Hola mundo" , "Adios Mundo"
	write(*,'(A,/A,2X,A)') "Hola mundo" , "Adios Mundo", "ASDA"
	write(*,'(A////)') "Uno", "Dos", "Tres"

	!CON ETIQUETA

	write(*,50) "Hola mundo", "Cruel", 12
	write(*,50) "Adios mundo", "Feliz", 8

	50 FORMAT (A,/,A,/,B8)

pause

end program 