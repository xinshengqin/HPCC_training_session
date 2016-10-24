 #\!/bin/bash
 #PBS -N test_ompi

 ## Request 16 CPUs (cores) on 2 nodes, 32 total cores
 #PBS -l nodes=2:ppn=16,mem=10gb,feature=16core,walltime=1:00:00


 ## Put the output from jobs into the below directory
 #PBS -o /usr/lusers/xsqin/HPCC_training/impi/hello_world

 ## Put both the stderr and stdout into a single file
 #PBS -j oe

 ## Specify the working directory for this job
 #PBS -d /usr/lusers/xsqin/HPCC_training/impi/hello_world

 ##PBS -W group_list=hyak-motley
 #PBS -W group_list=hyak-stf
   
 ## Load the appropriate environment module.
 module load gcc_4.4.7-impi_5.1.2

 mpirun -n 32 ./test
