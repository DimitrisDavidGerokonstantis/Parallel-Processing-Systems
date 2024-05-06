#!/bin/bash

## Give the Job a descriptive name
#PBS -N lists

## Output and error files
#PBS -o ./nb/list_8192_64_128_fgl.out
#PBS -e ./nb/list_8192_64_128_fgl.err

## How many machines should we get? 
#PBS -l nodes=sandman:ppn=64

##How long should the job run for?
#PBS -l walltime=00:30:00

## Start 
## Run make in the src folder (modify properly)

#module load openmp
cd /home/parallel/parlab17/exercise2/linked_list

for percentages in 100-0-0 80-10-10 20-40-40 0-50-50
do
    echo "#############################################################################################################################"
    for cores in 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63 0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13,14,14,15,15,16,16,17,17,18,18,19,19,20,20,21,21,22,22,23,23,24,24,25,25,26,26,27,27,28,28,29,29,30,30,31,31,32,32,33,33,34,34,35,35,36,36,37,37,38,38,39,39,40,40,41,41,42,42,43,43,44,44,45,45,46,46,47,47,48,48,49,49,50,50,51,51,52,52,53,53,54,54,55,55,56,56,57,57,58,58,59,59,60,60,61,61,62,62,63,63
    do
        IFS='-'
        read -a starr <<< $percentages
        export MT_CONF=$cores
        ./x.fgl 8192 ${starr[0]} ${starr[1]} ${starr[2]}
        echo ""
        #echo "8192 ${starr[0]} ${starr[1]} ${starr[2]}"
    done
done
