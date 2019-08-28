println(" Hello I am here" )
# We are going to add 63 child processes. This should really be done
# using the PBS_NP environment variable. 
# We need to subtract 3 from that overall number
#  - 1 for the maste
#  - 1 for each of the child processes already started by julia
#       on each  node specified in the machinefile
using Distributed
addprocs(20)
println(workers())

@everywhere include_string(Main, $(read("count_heads.jl", String)), "count_heads.jl")
a = @spawnat :any count_heads(100000000)
b = @spawnat :any count_heads(100000000)
fetch(a)+fetch(b)


println(" Hello I am done" )

