#/bin/bash

## Give the Job a descriptive name
#PBS -N runjob

## Output and error files
#PBS -o outrunjob
#PBS -e errorrunjob

## How many machines should we get?
#PBS -l nodes=1:ppn=1

#PBS -l walltime=00:05:00

## Start 
## Run make in the src folder (modify properly)
cd /home/parallel/parlab17/exercise4/heat_transfer/serial
./jacobi 2048
##./seidelsor 256
##./redblacksor 256
