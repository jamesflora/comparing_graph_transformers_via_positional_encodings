#!/bin/bash

#SBATCH -J brec_rd
#SBATCH -A eecs
#SBATCH -p share,gpu,dgx2
#SBATCH --gres=gpu:1
#SBATCH --mem=8G


source activate /nfs/hpc/share/floraj/graphgps
cd /nfs/hpc/share/floraj/biharmonic/comparing_graph_transformers_via_positional_encodings

python main.py --cfg configs/BREC/brec-edges.yaml wandb.use True
