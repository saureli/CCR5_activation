#!/bin/sh
mpirun -np 8 gmx_mpi mdrun -deffnm oneopes -s oneopes.tpr -plumed plumed.dat \
    -multidir replica_0 replica_1 replica_2 replica_3 replica_4 replica_5 replica_6 replica_7 \
    -hrex -replex 5000
