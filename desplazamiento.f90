!
!! desplazamiento.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp97.example.com>
!! 
!! Started on  Thu Sep 14 17:51:20 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-sep-14.jueves 18:07:19 (cloudx9stre)>
!
program projectile
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, t, u, x, y
  real :: theta, v, vx, vy

  ! Leer valores para el ángulo a, el tiempo t, y la velocidad inicial u desde la terminal
  write(*,*) 'Dame el ángulo, el tiempo y la velocidad inicial'
  read(*,*) a, t, u

  !Ecuación del desplazamiento en X y Y
  x = (u*t)*(cos(a))
  y = (u*t)*(sin(a)) - ((1/2)*(g*(t*t))) 
  
  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0
  
 ! escribiendo el resultado en la pantalla
 ! write(*,*) 'x: ',x,'  y: ',y
 ! write(*,*) 'v: ',v,'  theta: ',theta
  write(*,*) 'x:' , x
  write(*,*) 'y:' , y
  
end program projectile
