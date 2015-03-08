PROGRAM MCint
! Using the Monte Carlos Integration Method to find PI
IMPLICIT NONE
  REAL R
  REAL ans
  REAL, DIMENSION (10,10)::a,b,c
  real                               :: rndReal
  real, dimension(10,10)                :: rndRealArr
  integer                            :: seedSize
  integer, dimension(:), allocatable :: seed
  integer, dimension(8)              :: dtVals
  rndRealArr = 0
  call RANDOM_NUMBER(rndRealArr)
  !write (*,*) 'Random Array: ', rndRealArr
  a= rndRealArr
  !write (*,*) 'Random Array: ', a 
  ans = R(1.,2.)
  !Print *,ans
END

FUNCTION R(x,y)
 	!Function evaluates r = x^2+y^2
	REAL x ,y, ans
	ans  =x**2+y**2
	Print *,ans
	RETURN 
END
