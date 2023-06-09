# load necessary libraries
library("doParallel")
ppn <- Sys.getenv("PBS_NUM_PPN") 
ppn <- as.numeric(ppn)-1
registerDoParallel(cores=ppn)
source("2-dopar.R", echo=TRUE)
