/* config.do */
global DATA ../data
! mkdir $DATA

/* get data */

use https://stats.idre.ucla.edu/stat/stata/webbooks/reg/elemapi
save $DATA/elemapi, replace

/* a simple regression */
regress api00 acs_k3 meals full 
