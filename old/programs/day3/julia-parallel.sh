#!/bin/bash
echo "This job will use CPUS on $(cat machinefile)"

julia  --machine-file machinefile driver.jl

echo " All done" 
