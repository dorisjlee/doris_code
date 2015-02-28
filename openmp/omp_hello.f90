!******************************************************************************
! FILE: omp_hello.f
! DESCRIPTION:
!   OpenMP Example - Hello World - Fortran Version
!   In this simple example, the master thread forks a parallel region.
!   All threads in the team obtain their unique thread number and print it.
!   The master thread only prints the total number of threads.  Two OpenMP
!   library routines are used to obtain the number of threads and each
!   thread's number.
! AUTHOR: Blaise Barney  5/99
! LAST REVISED: 
!******************************************************************************

      PROGRAM HELLO
     
      INTEGER NTHREADS, TID, OMP_GET_NUM_THREADS,OMP_GET_THREAD_NUM
  
!     Fork a team of threads giving them their own copies of variables
!$OMP PARALLEL PRIVATE(NTHREADS, TID)


!     Obtain thread number
      TID = omp_get_thread_num()
      PRINT *, 'Hello World from thread = ', TID

!     Only master thread does this
      IF (TID .EQ. 0) THEN
        NTHREADS = omp_get_num_threads()
        PRINT *, 'Number of threads = ', NTHREADS
      END IF

!     All threads join master thread and disband
!$OMP END PARALLEL

      END

