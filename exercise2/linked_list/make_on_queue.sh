#!/bin/bash

## Give the Job a descriptive name
#PBS -N make_kmeans

## Output and error files
#PBS -o ./make_linked_list.out
#PBS -e ./make_linked_list.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=1

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd ~/exercise2/linked_list
make
