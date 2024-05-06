all: omp_GoL

omp_GoL: Game_Of_Life.c
	gcc -O3 -fopenmp -DOUTPUT -o omp_GoL Game_Of_Life.c

clean: 
	rm omp_GoL
