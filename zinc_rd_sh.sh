#!/bin/bash

#SBATCH -J ZINC_rd
#SBATCH -A eecs
#SBATCH --gres=gpu:1
#SBATCH -p share,gpu,dgx2
#SBATCH --mem=5G
#SBATCH --time=1-00:00:00

module load conda/24.3
cd /nfs/hpc/share/floraj/biharmonic/comparing_graph_transformers_via_positional_encodings

python main.py --cfg configs/ZINC/zinc-rpe-transformer-rd.yaml wandb.use False 
