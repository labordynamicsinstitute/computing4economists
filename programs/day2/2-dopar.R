# Set up the cluster

library(doParallel)
cl <- makeCluster(2)
registerDoParallel(cl)


# Read the Iris data (subset of)
x <- iris[which(iris[,5] != "setosa"), c(1,5)]
# How many runs
trials <- 10000
# We're going to time this
ptime <- system.time({
 # the icount() functions gives us an iterator, running from through to the argument
 # the foreach function runs parallel jobs, the %dopar% is the operator
 r <- foreach(icount(trials), .combine=cbind) %dopar% {
  # sample the data
   ind <- sample(100, 100, replace=TRUE)
  # estimate a model, capture the results
   result1 <- glm(x[ind,2]~x[ind,1], family=binomial(logit))
  # return the results , which will be concatenated.
 coefficients(result1)
 }
 })[3]
# print how long it took.
ptime
