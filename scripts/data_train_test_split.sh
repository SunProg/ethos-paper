#!/bin/bash -l
#SBATCH --mem-per-cpu=2048
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --job-name=split_mimic_train_test
#SBATCH --time=2-00:00:00
#SBATCH --output=/scratch/users/%u/split_mimic_train_test_%j.out

uv run python scripts/data_train_test_split.py ethos/data/mimic-iv-2.2 --n_jobs 64 
