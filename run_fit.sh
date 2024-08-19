#!/bin/bash
#SBATCH --job-name=pbrun
#SBATCH --time=02:30:00
#SBATCH --output=pbrun.out
#SBATCH --error=pbrun.err
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#SBATCH --mem=10G
#SBATCH --constraint=cpu 
#SBATCH --qos=regular

module load python
conda activate triposh

srun python /path/to/fit.py -config /path/to/PkBk_config.yml