#!/bin/bash
#PBS -N julia
#PBS -l nodes=2:ppn=32
#PBS -j oe
#PBS -q premium
cd $PBS_O_WORKDIR
source /etc/profile.d/modules.sh
echo "This job is running on $(hostname)"
echo "-------" 
module load julia
cat $PBS_NODEFILE | sort | uniq > machinefile
echo "This job will use CPUS on $(cat machinefile)"

julia  --machinefile machinefile driver.jl

echo " All done" 
