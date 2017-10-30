!
!! medias.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp88.example.com>
!! 
!! Started on  Mon Oct 30 12:07:40 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-oct-30.lunes 12:52:26 (cloudx9stre)>
!

! sum.f90
! Performs summations using in a loop using EXIT statement
! Saves input information and the summation in a data file

 program summation
 implicit none
 integer :: sum, a,s,p

 print*, "Este programa permite calcular la media aritmetica y armonica"
 open(unit=10, file="SumData.DAT")

 s = 0
 
 
 do
  print*, "Add:"
  read*, a
  if (a == 0) then
   exit
  else
     sum = s + a
     p= sum/a
  end if
  write(10,*) p
 end do
 
 
 
 print*, "Summation =", p
 write(10,*) "Summation =", p
 close(10)

 end
