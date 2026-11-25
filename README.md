# OneOPES simulations on apo- and holo-CCR5 

This repository contains the input files and computational setup used for the simulations described in:

## Repository content

This repository contains the files needed to reproduce the OneOPES simulations carried out to investigate the activation of apo-CCR5 and [5P7]CCL5-CCR4, as well as the complexes [6P4]CCL5-CCR5 WT and [6P4]CCL5-CCR5 Y251A.

The main directories include:

- `apo_wt`: input files for apo-CCR5
- `holo_5p7_wt`: input files for [5P7]CCL5-CCR5
- `holo_6p4_wt`: input files for [6P4]CCL5-CCR5 WT
- `holo_6p4_wt`: input files for [6P4]CCL5-CCR5 Y251

Each directory contains the necessary input files to run the simulations, including:

- system topology files
- GROMACS binary run input files (`.tpr`)
- PLUMED input files (`plumed.dat`)
- reference structures (`.pdb`)
- additional files required for the simulations

## Running the simulations

The simulations are organized as 8 parallel replicas (i.e., 0 to 7) and can be run using a command similar to:

```
mpirun -n 8 gmx_mpi mdrun -deffnm md_1 -notunepme -pin on -multidir ./0 ./1 ./2 ./3 ./4 ./5 ./6 ./7 -hrex -replex 5000 -plumed plumed.dat
```
as written in the `run.sh` files.
