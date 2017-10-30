!
!! esfera.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp88.example.com>
!! 
!! Started on  Mon Oct 30 11:15:20 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-oct-30.lunes 11:56:58 (cloudx9stre)>
!

program esfera

! Calculate the surface area of a cylinder.
!
! Declare variables and constants.
! constants=pi
! variables=radius squared and height

  implicit none    ! Require all variables to be explicitly declared

  integer :: ierr
  character(1) :: yn
  real :: radio, volumen, area 
  real, parameter :: pi = 3.141592653589793
  real :: r
  interactive_loop: do

!   Prompt the user for radius and height
!   and read them.

    write (*,*) 'Dame el radio.'
    read (*,*,iostat=ierr) r

!   If radius and height could not be read from input,
!   then cycle through the loop.

    if (ierr /= 0) then
      write(*,*) 'Error, invalid input.'
      cycle interactive_loop
    end if

!   Compute area.  The ** means "raise to a power."

    area =4*pi*(r*r)
    !   Formula del volumen

    volumen= (((4/3)*pi)*(r*r*r))
    
!   Write the input variables (radius, height)
!   and output (area) to the screen.

     write (*,*) &
      'volumen=', volumen, 'area=',area
 

    yn = ' '
    yn_loop: do
      write(*,*) 'Perform another calculation? y[n]'
      read(*,'(a1)') yn
      if (yn=='y' .or. yn=='Y') exit yn_loop
      if (yn=='n' .or. yn=='N' .or. yn==' ') exit interactive_loop
    end do yn_loop

  end do interactive_loop

end program esfera
