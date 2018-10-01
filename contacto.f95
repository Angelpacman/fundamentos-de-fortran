program contacto
	implicit double	precision (a,h,l,m,o-z)

	parameter (phi=0.2d+00,per=9e-12)
	parameter (cr=1.0e-10,cf=1.0e-7)
	parameter (po=1000.0d+00,h=1.0d+00)
	parameter (nx=5,ny=5,nimax=1000,njmax=1000)


	call mesh(l,h,nx,ny,nimax,njmax)
	open (unit=10,file="prueba.txt",status="replace",action="write")
	write(unit=10)
!c	write(*,*)"phi=",phi
write(*,*)"phi=",phi
!c	write(*,*)"per=",per
write(*,*)"per=",per
!c	write(*,*)"cr=",cr
write(*,*)"cr=",cr
!c	write(*,*)"po=",po
write(*,*)"po=",po

close (unit=10)
	end
!c !comienza area de subroutines!

	subroutine mesh(l,h,nx,ny,nimax,njmax)
	implicit double precision (a,h,l,m,o-z)
	dimension x(nimax),y(njmax)

  	x(1)=0.0d+00
	x(nx)=l
	dx=l/dfloat(nx)


	do 1 i=2,nx
	x(i)=x(i)+dx
    1	continue

    y(1)=0.0d+00
	y(ny)=h
	dy=h/dfloat(ny)

	do 2 j=2,ny
	y(j)=y(j)+dy
    2	continue
    do i=1,nx
	write (*,*)"x",i,"=",x(i)
	end do

	do j=1,ny
	write (*,*)"y",j,"=",y(j)
	end do

return
end
