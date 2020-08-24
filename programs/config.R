#Any libraries needed are called and if necessary installed through `libraries.R`:

mran.date <- "2020-08-21"
options(repos=paste0("https://cran.microsoft.com/snapshot/",mran.date,"/"))


source(file.path(programs,"global-libraries.R"),echo=FALSE)
#source(file.path(programs,"libraries.R"), echo=FALSE)

