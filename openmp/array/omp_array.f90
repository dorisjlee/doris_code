PROGRAM array
  integer :i,maxi
  REAL, DIMENSION (10000,10000)::a,b,c
  real                               :: rndReal
  real, dimension(10000,10000)                :: rndRealArr
  integer                            :: seedSize
  integer, dimension(:), allocatable :: seed
  integer, dimension(8)              :: dtVals
  !random number snippet by Mitch Richling (http://www.mitchr.me/SS/exampleCode/random/f90Rand.f90.html)
  call DATE_AND_TIME(VALUES=dtVals)
  call RANDOM_SEED(SIZE=seedSize)
  allocate(seed(seedSize)) 
  call RANDOM_SEED(GET=seed)
  ! Use the last bits of the DATE_AND_TIME values array to seed the number
  call RANDOM_SEED(PUT=dtVals((9-seedSize):8))
  ! Re-query the seed to make sure it worked.
  call RANDOM_SEED(GET=seed)
  ! Get one random number
  rndReal = 0
  call RANDOM_NUMBER(rndReal)
  !write (*,*) 'Random Number: ', rndReal
  ! Get an array of random numbers
  rndRealArr = 0
  call RANDOM_NUMBER(rndRealArr)
  !write (*,*) 'Random Array: ', rndRealArr
  a= rndRealArr
  b = rndRealArr*13 + 43 !messup array a
  !Real work done here
  !c = a+b
  !$omp parallel workshare
  !Element by element multiplication 
  !c = a*b 
  !$omp parallel workshare
  !$omp parallel do 
  !maxi = 100
  !do i=0,maxi-1
!	a(i)=b(i)+c(i)
 ! end do
END PROGRAM array 
