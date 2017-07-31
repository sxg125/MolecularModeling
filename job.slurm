#!/bin/bash

#SBATCH -N 1 -n 1 --mem=4gb

# Copy Input Files to scratch space
cp INCAR  KPOINTS  POSCAR  POTCAR $PFSDIR

# Change Directory to sratch
cd $PFSDIR

# Load the VASP module
module load vasp

# Run serial job
vasp_serial

# Copy output back to working directory
cp -ru * $SLURM_SUBMIT_DIR
