#This is for the WSOL with the SH file

#$ -l tmem=12G
#$ -l gpu=true
#$ -l h_rt=12:00:00 
#$ -j y
#$ -N srgan
#$ -S /bin/bash
# -pe smp 2
# -R y

# activate the virtual env tensorflow

source activate tensorflow2
# Source file for CUDA 8.0 and cuDNN 7.0.5
# 23/04/18

source /share/apps/source_files/cuda/cuda-10.1.source

nvidia-smi

hostname
date

################## change the path to yours #################
cd /SAN/medic/OVS2020/srgan

python train.py

date


