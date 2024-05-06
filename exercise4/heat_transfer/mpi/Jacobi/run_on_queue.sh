#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_jacobi

## Output and error files
#PBS -o /home/parallel/parlab17/exercise4/heat_transfer/mpi/Jacobi/results/run_jacobi_64proc.out
#PBS -e /home/parallel/parlab17/exercise4/heat_transfer/mpi/Jacobi/results/run_jacobi_64proc.err

## How many machines should we get? 
#PBS -l nodes=2:ppn=8

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab17/exercise4/heat_transfer/mpi/Jacobi
mpirun --mca btl tcp,self -np 64 ./jacobi 1024 1024 8 8



