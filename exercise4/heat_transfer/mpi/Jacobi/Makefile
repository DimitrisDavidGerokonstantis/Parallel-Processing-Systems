CC=mpicc
CFLAGS=-O3 -lm -Wall
RES=-DPRINT_RESULTS
CONV=-DTEST_CONV

all: jacobi

jacobi: mpi_skeleton.c utils.c
	# $(CC) $(CFLAGS) $(RES) $(CONV) mpi_skeleton.c utils.c -o jacobi
	# $(CC) $(CFLAGS) $(CONV) mpi_skeleton.c utils.c -o jacobi
	$(CC) $(CFLAGS) mpi_skeleton.c utils.c -o jacobi
clean:
	rm jacobi
