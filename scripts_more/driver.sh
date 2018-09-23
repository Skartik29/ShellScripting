#!/bin/bash

#SBATCH --time=24:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes, KEEP AT 1 ON EULER, unless running NEB jobs
#SBATCH --ntasks-per-node=16   # 16 processor core(s) per node
##SBATCH --mem=180G   # maximum memory per node
ulimit -s unlimited

mpirun -n 16 /opt/bin/vasp-std > out

