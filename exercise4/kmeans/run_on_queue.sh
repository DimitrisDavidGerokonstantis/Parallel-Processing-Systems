#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_mpi_kmeans

## Output and error files
#PBS -o /home/parallel/parlab17/exercise4/kmeans/results/run_mpi_kmeans_64proc.out
#PBS -e /home/parallel/parlab17/exercise4/kmeans/results/run_mpi_kmeans_64proc.err

## How many machines should we get? 
#PBS -l nodes=2:ppn=8

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab17/exercise4/kmeans
mpirun --mca btl tcp,self -np 64 ./kmeans_mpi -c 16 -s 256 -n 16 -l 10 



