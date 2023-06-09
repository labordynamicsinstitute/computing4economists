####################################
# global libraries used everywhere #
####################################



pkgTest <- function(x)
{
	if (!require(x,character.only = TRUE))
	{
		install.packages(x,dep=TRUE)
		if(!require(x,character.only = TRUE)) stop("Package not found")
	}
	return("OK")
}

global.libraries <- c("ggplot2","devtools","rprojroot","tictoc")

results <- sapply(as.list(global.libraries), pkgTest)
