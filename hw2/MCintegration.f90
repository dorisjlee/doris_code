PROGRAM MCint
! Using the Monte Carlos Integration Method to find PI
IMPLICIT NONE
  INTEGER  i
  REAL R
  INTEGER H
  REAL ans
  REAL, DIMENSION (10,10)::X,Y
  real                               :: rndReal
  real, dimension(10,10)                :: rndRealArr
  integer                            :: seedSize
  integer, dimension(:), allocatable :: seed
  integer, dimension(8)              :: dtVals
  rndRealArr = 0
  call RANDOM_NUMBER(rndRealArr)
  X= rndRealArr
  !write (*,*) 'Random Array: ', X 
  call RANDOM_NUMBER(rndRealArr)
  Y= rndRealArr
  write (*,*) 'Random Array: ', Y
  ans = R(4.,2.)
  print *,ans
  print *,H(0.1,0.01)
  print *,H(10.,3.)
  do i =1,10
	print *,X(i)
  end do 

END
INTEGER FUNCTION H(x,y)
	!Determines whether the point is inside or outside the circle
	! MAKE SURE x,y arguments are proper floats or strange comparison bug may occur
	if (R(x,y)<=1) then 
		H=1
	else
		H=0
	end if
	RETURN
END 
REAL FUNCTION R(x,y)
 	!Function evaluates r = x^2+y^2
	write (*,*),"x:",x
	write (*,*),"y:",y
	R  =x**2+y**2
	Print *,R
	RETURN 
END

