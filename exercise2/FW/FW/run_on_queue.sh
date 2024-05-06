#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_fw

## Output and error files
#PBS -o ./results/run_fw.out
#PBS -e ./results/run_fw.err

## How many machines should we get? 
#PBS -l nodes=sandman:ppn=16

##How long should the job run for?
#PBS -l walltime=00:15:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd ~/exercise2/FW/FW/
export OMP_NUM_THREADS=16
##export GOMP_CPU_AFFINITY="0-63"
##./fw 1024
./fw_sr 1024 64
## ./fw_tiled <SIZE> <BSIZE>
##./my_fw 1024 16
