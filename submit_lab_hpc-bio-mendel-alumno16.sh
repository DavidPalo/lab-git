#!/bin/bash

#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno16/lab_2/
#SBATCH -J submit_lab_hpc-bio-mendel-alumno16
#SBATCH --ntasks=4

./file-cut.sh
