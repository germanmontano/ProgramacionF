!
!! solaris.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp166.example.com>
!! 
!! Started on  Fri Nov 10 10:44:57 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-nov-24.viernes 11:36:22 (cloudx9stre)>
!
 program solaris

  !Definir variables y fijos
  double precision :: T=365.26d0
  double precision :: pi=3.14d0
  double precision :: w, Fst, arad, fi, Vang, deltat,x,y,fa,a
  double precision :: R=149.6d0
  double precision :: G=6.674d-11
  integer:: i
  !mt=masa de la tierra, ms=masa del sol
  double precision :: mt=5.972d24 , ms=1.989d30

  !Formulas que se usara
  !Fst=fuerza de atraccion entre el sol y la tierra
  Fst= G*((ms*mt)/(R*R))
  !arad=aceleracion radial de la tierra
  arad= G*(ms/(R*R))
  !w=velocidad angular de la tierra
  w=(2.0d0*pi)/T
  !Vang=velocidad angular
  Vang=R*w
  !Nuestra delta t
  deltat=T/360.0d0
  open (1, file='Sol.dat', status='unknown')
  
  do i=0,720,15 
     
     a=(DBLE(i)*pi)/3.6d2
     x=R*dcos(a)
     y=R*dsin(a)
     write(1,*) x, y
  end do
  write (1,*) ''
  end program
     
