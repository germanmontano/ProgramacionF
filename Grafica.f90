!
!! Grafica.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp88.example.com>
!! 
!! Started on  Mon Sep 25 11:15:12 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-sep-27.miércoles 11:18:23 (cloudx9stre)>
!

  ! outputdata.f90
program outputdata
  implicit none
  !Defeniremos nuestras variables
  integer :: i, a
  !Daremos unos parametros
  integer, parameter :: ntimes=100
  integer, parameter :: maxang=90
  !Dar valores variables dentro de un parametro
  real, dimension (200) :: x, y
  real :: radian, time, fa, fi 
  !Definimos unos valores constantes
  real, parameter :: deltat=0.1, g=5 !solo necesitamos la 1/2 g para
  !los calculos
  real, parameter :: pi=3.1415927, vo=10

  !Indicamos que los datos que nos de este programa nos lo guardara
  !en un carpeta con el nombtre que nosotros le designemos
  open (1, file = 'grafica.dat' , status= 'unknown')
  !Aplicaremos un loop para que nos de los distintos valores de la
  !grafica
  do a=15, 90, 15
     fa= float(a)
     radian = (fa*pi)/180
     do i=1, ntimes
        fi= float(i)
        time= fi*deltat
        x(i)= vo * time * cos(radian)
        y(i)= (vo * time * sin(radian)) - (0.5*g*(time*time))
        if(y(i).LT.0) exit
        write (1,*) x(i), y(i)

     end do
     write (1,*) ' '
  end do
  close(1)

  end program
  
