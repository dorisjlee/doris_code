      Program Hello
	! Variable declaration
	implicit none !prevents fortran to default ij,k,l,m,n as integers (always include this)
	INTEGER a 
	INTEGER b
	REAL :: temperature
	INTEGER :: j(2) !array of two integers
	!This is strange, why can I compile the code even though I am not following the 6space rule?
	Print *, "Hello World!"
	a= 1
	b=1
	temperature = 5.23
	j =(/2,4/)
	Print *,a+b
	Print *,temperature
	Print *,j
      End Program Hello
