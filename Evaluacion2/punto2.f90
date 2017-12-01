!
!! punto2.f90
!! 
!! Made by (German Antonio Montaño Peraza )
!! Login   <cloudx9stre@ltsp157.example.com>
!! 
!! Started on  Fri Dec  1 11:31:05 2017 German Antonio Montaño Peraza 
!! Last update Time-stamp: <2017-dic-01.viernes 11:35:28 (cloudx9stre)>
!

program taylor

    implicit none                  
real (kind=8) :: x, exp_true, y
    real (kind=8), external :: exptaylor
    integer :: n

    n = 100               ! number of terms to use
    x = 1.0
    exp_true = exp(x)
    y = exptaylor(x,n)   ! uses function below
    print *, "x = ",x
    print *, "exp_true  = ",exp_true
    print *, "exptaylor = ",y
    print *, "error     = ",y - exp_true

end program taylor

!==========================
function exptaylor(x,n)
!==========================
    implicit none

    ! function arguments:
    real (kind=8), intent(in) :: x
    integer, intent(in) :: n
    real (kind=8) :: exptaylor

    ! local variables:
    real (kind=8) :: term, partial_sum
    integer :: j

    term = 1.
    partial_sum = term

    do j=1,n,2
        ! j'th term is  x**j / j!  which is the previous term times x/j:
        term = term*x/j   
        ! add this term to the partial sum:
        partial_sum = partial_sum + term   
        enddo
     exptaylor = partial_sum  ! this is the value returned
end function exptaylor
