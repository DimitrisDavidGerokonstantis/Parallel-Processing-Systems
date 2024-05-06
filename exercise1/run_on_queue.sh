#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_omp_GoL

## Output and error files
#PBS -o ./benchmarks/hello/run_omp_GoL.out
#PBS -e ./benchmarks/hello/run_omp_GoL.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd ~/exercise0
export OMP_NUM_THREADS=8
./omp_GoL 64 4

