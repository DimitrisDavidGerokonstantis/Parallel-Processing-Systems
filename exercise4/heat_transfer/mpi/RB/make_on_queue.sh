#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_mpi_rb

## Output and error files
#PBS -o /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB/make_mpi_rb.out
#PBS -e /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB/make_mpi_rb.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmpi/1.8.3
cd /home/parallel/parlab17/exercise4/heat_transfer/mpi/RB
make

