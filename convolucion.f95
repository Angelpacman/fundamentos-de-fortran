function convolve(x, h)
        implicit none

        !x is the signal array
        !h is the noise/impulse array
        real, dimension(:), allocatable :: convolve, y
        real, dimension(:) :: x, h
        integer :: kernelsize, datasize
        integer :: i,j,k

        datasize = size(x)
        kernelsize = size(h)

        allocate(y(datasize))
        allocate(convolve(datasize))

        do i=kernelsize,datasize
            y(i) = 0.0
            j=i
            do k=1,kernelsize
                y(i) = y(i) + x(j)*h(k)
                j = j-1
            end do
        end do

        do i=1,kernelsize
            y(i) = 0.0
            j=i
            k=1
            do while (j > 0)
                y(i) = y(i) + x(j)*h(k)
                j = j-1
                k = k+1
            end do
        end do

        convolve = y

    end function convolve
