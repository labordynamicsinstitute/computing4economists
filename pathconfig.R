# ###########################
# CONFIG: define paths and filenames for later reference
# ###########################

# Change the basepath depending on your system

basepath <- rprojroot::find_root(rprojroot::has_file("pathconfig.R"))

# Main directories
programs <- file.path(basepath,"programs")
libs <- file.path(basepath,".libs")

for ( dir in list(programs,libs)){
	if (file.exists(dir)){
	} else {
	dir.create(file.path(dir))
	}
}


# set the install path to the local

.libPaths(libs)
message("Using library: ", .libPaths()[1])

