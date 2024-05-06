#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_rb

## Output and error files
#PBS -o /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB/resultsRB/noConv/4096/run_rb_16bproc.out
#PBS -e /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB/resultsRB/noConv/4096/run_rb_16bproc.err

## How many machines should we get? 
#PBS -l nodes=2:ppn=8

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB
mpirun --mca btl tcp,self -np 16 ./jacobi 4096 4096 4 4



