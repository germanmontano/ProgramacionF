!
!! altura_max.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp85.example.com>
!! 
!! Started on  Mon Sep 11 10:31:57 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-sep-11.lunes 11:09:10 (cloudx9stre)>
!

program projectile
  implicit none

  ! definimos constantes
  real, parameter :: g = 9.8
  real, parameter :: pi = 3.1415927

  ! definimos las variables
  real :: a, t, u, x, y, h
  real :: theta, v, vx, vy

  ! Leer valores para el ángulo a, el tiempo t, y la velocidad inicial u desde la terminal
  write(*,*) 'Dame el ángulo y la velocidad inicial'
  read(*,*) a, u

  ! convirtiendo ángulo a radianes
  a = a * pi / 180.0
  
  ! la ecuaciones de la altura maxima
  h= (u * u) * ((sin (a)) * (sin (a))) / (2*g)
 
 ! escribiendo el resultado en la pantalla
 ! write(*,*) 'x: ',x,'  y: ',y
 ! write(*,*) 'v: ',v,'  theta: ',theta
  write(*,*) 'h:' , h
  
end program projectile
