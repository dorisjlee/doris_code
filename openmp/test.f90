Program test
IMPLICIT NONE
INTEGER i
INTEGER maxi
REAL, DIMENSION(10) :: D
INTEGER ::a(100000)
INTEGER ::b(100000)
INTEGER ::c(100000)
REAL ::id
REAL :: start,finish !Becareful theses are initialized as very small but nonzero fp numbers
!maxi=10
!id = omp_get_thread_num()
!print *,a !array initialized is actually not all zero values
!Start timer 
D= (/ (I, I = 1, 10) /)
print *,D
call cpu_time(start)
print *,start
read '(f6.3)', id
do i = 1, maxi
    a(i) = b(i) + c(i)
enddo
print *,start
print *,finish
call cpu_time(finish)
print *,finish

print *,'Time = '
print *,(finish-start)
!paralle workshare parallelizes Fortran array syntaxes
!$omp parallel workshare
a = b+c
!$omp end parallel workshare
End Program test
