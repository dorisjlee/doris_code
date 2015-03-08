PROGRAM MCint
! Using the Monte Carlos Integration Method to find PI
IMPLICIT NONE
  INTEGER  i,j,n, IN,OUT
  REAL R
  REAL tmp_x, tmp_y
  INTEGER H
  REAL ans
  !INT(1e9
  INTEGER, DIMENSION(100):: Hval
  REAL, DIMENSION (100)::X,Y
  real                              :: rndReal
  real, dimension(100)                :: rndRealArr
  integer                            :: seedSize
  integer, dimension(:), allocatable :: seed
  integer, dimension(8)              :: dtVals
  rndRealArr = 0
  call RANDOM_NUMBER(rndRealArr)
  X= rndRealArr
  !write (*,*) 'Random Array: ', X 
  call RANDOM_NUMBER(rndRealArr)
  Y= rndRealArr
 n=0
!  print *,Y(1)
  do i =1,100
!	do j = 1,10
		!write (*,*), i , "$"
		tmp_x = X(i)
                tmp_y = Y(i)
		!write (*,*),"x",tmp_x
		!Hval(i)=H(tmp_x,tmp_y)
		if (R(tmp_x,tmp_y)<=1) then
			!H=1
			IN=IN+1
		else
			!H=0
			OUT= OUT+1
		end if

		!write (*,*),"y",tmp_y
!		print * , H(tmp_x,tmp_y)
		n=n+1
!	end do  
		!print *, "-----------" 
  end do
!print *,Hval 
print *,IN
print *,OUT
print * , 4.*(REAL(IN)/REAL(OUT+IN))
  !print *,n
END
SUBROUTINE  H(x,y)
	!Determines whether the point is inside or outside the circle
	! MAKE SURE x,y arguments are proper floats or strange comparison bug may occur
	if (R(x,y)<=1) then 
		!H=1
		IN=IN+1
	else
		!H=0
		OUT= OUT+1
	end if
	RETURN
END 
REAL FUNCTION R(x,y)
 	!Function evaluates r = x^2+y^2
	!write (*,*),"x:",x
	!write (*,*),"y:",y
	R  =x**2+y**2
	RETURN 
END

