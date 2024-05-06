#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o ./results/omp_naive.out
#PBS -e ./results/omp_naive.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=64

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab17/exercise2/kmeans_locks 

for core_num in 1 2 4 8 16 32 64
do
    export OMP_NUM_THREADS=$core_num
    export GOMP_CPU_AFFINITY="0-$(($core_num-1))"
    ./kmeans_omp_naive -s 32 -n 16 -c 16 -l 10
done



