!
!! outputdata.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp97.example.com>
!! 
!! Started on  Thu Sep 14 18:40:49 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-sep-14.jueves 18:41:08 (cloudx9stre)>
!

! outputdata.f90
program outputdata
  implicit none
  real, dimension(100) :: x, y
  integer :: i

  ! setup x and y with some data
  do i=1,100
     x(i) = i * 0.1
     y(i) = sin(x(i)) * (1-cos(x(i)/3.0))
  end do

  ! output data to a file
  open(1, file='data1.dat', status='new')
  do i=1,100
     write(1,*) x(i), y(i)
  end do
  close(1)

end program outputdata
