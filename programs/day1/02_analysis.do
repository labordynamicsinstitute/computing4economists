/* Written by Lars Vilhuber */
/* Purpose: This uses the data prepared earlier, and analyzes it */
set processors 2
di "START: $S_DATE $S_TIME"
set obs 100000000
gen i = _n
gen j = i*i
sum
di "END: $S_DATE $S_TIME"

