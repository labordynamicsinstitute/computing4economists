global SMPLSZ 25 
use $DATA/elemapi
generate random = runiform()
sort random
generate insample = _n/_N *100 <= $SMPLSZ
regress api00 acs_k3 meals full  
