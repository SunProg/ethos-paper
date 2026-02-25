#!/bin/bash -l
#SBATCH --mem-per-cpu=2048
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --time=2-00:00:00
#SBATCH --gres=gpu:1
#SBATCH --output=/scratch/users/%u/%j.out

uv run ethos tokenize- mimic test -v ethos/data/tokenized_datasets/mimic_vocab_t4367.pkl -j 64