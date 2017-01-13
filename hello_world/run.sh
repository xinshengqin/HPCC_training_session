#!/bin/bash
#PBS -N hello_world

## Request 16 CPU cores on 1 nodes
#PBS -l nodes=1:ppn=16,mem=10gb,feature=16core,walltime=1:00:00


## Put the output from jobs into the below directory
#PBS -o /usr/lusers/xsqin/HPCC_training_session/hello_world

## Put both the stderr and stdout into a single file
#PBS -j oe

## Specify the working directory for this job
#PBS -d /usr/lusers/xsqin/HPCC_training_session/hello_world

#PBS -W group_list=hyak-motley
##PBS -W group_list=hyak-stf
   
./test
