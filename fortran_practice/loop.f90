program loop
implicit none
integer :: i,x 
real :: y !integer declaration must be here!!
do i=0,20,2 ! last args is increment of 2
	print *,i	
end do
! integer :: x ,y
do x=-10,10
	IF (x ==0) THEN
 		y =0
	ELSE
		y=1.0/x
	END IF
	print *, y
end do 
end program loop
