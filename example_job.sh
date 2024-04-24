#!/bin/bash
#SBATCH --account=p32300 # Change to an allocation you are a member of!
#SBATCH --partition=short
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:20:00
#SBATCH --output=rscriptexample.out
#SBATCH --job-name=rscriptexample

module purge
module load R/4.3.0

Rscript example_script.R
