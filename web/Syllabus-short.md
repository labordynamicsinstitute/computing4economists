High-performance computing for Economists
=========================================

Location
--------
*Ives 109*, 2014/8/18-2014/8/20 9:00 - 5:00 p.m. (we will typically end earlier)

Capacity: 32 

Contributors:
------------
John M. Abowd, Rick Mansfield, Flavio Stanchi, Hautahi Kingi, Sida Peng, Lars Vilhuber

Goal
----
The goal of this class is to showcase high-performance techniques and tools for economics students. The goal is NOT to teach a full 
course on SAS, Stata, etc. - there are other classes for that. We will teach just enough of each programming language to
be able to highlight additional techniques (for SAS and Matlab, we will teach specialized workshops on each in more depth)
 This course is designed to open your eyes to the possibilities, scratching
the surface, but mostly not diving into any particular depths. Follow-on short courses may solve those needs. For
specific programming languages, we point to offerings elsewhere on campus, for instance at [CISER](http://www.ciser.cornell.edu). 

Target group
------------
Second year Ph.D. in Economics or other social sciences.

Requirements
------------
* Working knowledge of at least one statistical programming language (R, SAS, Stata, Matlab, Gauss) - the specific languange is not important.
* Bring your laptop to class.

Day 0
-----
* Request an account on Econ Cluster on the [account request page](https://www.cac.cornell.edu/services/external/RequestCACid.aspx?ProjectID=lv39_0004)
* Fill out the online survey (sent out by email) ( results for [2013](SurveyResults2013.pdf) and [2014](Computing_in_Economics_2014_results.pdf) )

Day 1
-----
* 9:00-9:30 Introduction (Lars)

* 9:30-10:30 [Programming basics](../documents/day1-1.pdf) (Lars)
	* Choosing an editor
	* How to structure programs, texts, etc.
	* A clean sequence of programs
	* NX, SSH, Linux, request an account on cluster (see also [CAC: Introduction to Linux](https://www.cac.cornell.edu/VW/Linux/default.aspx?id=xup_guest)
	* The command line (Hautahi Kingi) [lecture notes](../Git_CL_Slides/Slides_CommandLine.pdf)
  * Basic scripting

* 10:30-10:45 Break

* 10:45-12:30 [Basics of version control](../documents/day1-2.pdf) (Lars)
	* File-system based version control 
	* More formal version control
		- Subversion (Flavio Stanchi):  [lecture notes](../SVN_Presentation/Subversion_slides.pdf) ( [Long tutorial referenced in class](COMPUTER_Subversion_LongTutorial.pdf) )
		- Git (Hautahi) [lecture notes](../Git_CL_Slides/Git_Notes.pdf)

* 13:30-14:30 Putting it into practice

* 14:30-16:00 [HP resources at Cornell, elsewhere](../documents/day3-1.pdf) (Lars)
	* Basic types of HP computing (multi-threaded, data I/O, big memory)
	* Working with servers
	* Resources available
		* scaling from workstation to HPC cluster
	* XSEDE and getting there
	* Amazon EC2 and getting there (?)
	* Setting up infrastructure at Cornell

* 16:00-17:00 Putting it into practice

Day 2
-----
* 9:00-10:30 Subroutines
    * [Example of function programming in R](../documents/day2-1.pdf) (Lars)
    * [Extending the principle to other languages](../documents/HPC_Class_SubRoutines.pdf) (Lars)
		* Subroutines in SAS: macros
		* Subroutines in Stata: programs
		* Subroutines in Matlab: function
    * Debugging your code

* 10:30-11:00 Break

* 11:00-12:30 [A practical example: Matlab programming](../documents/Matlab%20Big%20Data%20Techniques.pdf) (Rick)
    * Some additional links
        * [Matlab memory considerations](http://www.mathworks.com/help/matlab/matlab_prog/strategies-for-efficient-use-of-memory.html)
        * [School_choice_example_small.m](../programs/day2/School_choice_example_small.m)


* 13:30-14:30 Putting it into practice

* 14:30-16:00 [Introduction to parallel processing](../documents/HPC_Class_Parallel.pdf) (Lars)
	* Threads
	* Embarassingly parallel problems
	* Basic tools (bash, qsub, ECCO)
	* SAS, Stata, Matlab

* 16:00-17:00 Putting it into practice

Day 3
-----
* 9:00-12:00 Parallel working groups (with breaks)
	* Leveraging parallel programming techniques in SAS (Lars)
	* Leveraging parallel programming techniques in Matlab (Sida) [lecture notes](../Matlab/peng-matlabparallel.pdf)

* 13:30-14:30 [Considerations for data management](../web/coming-soon.html) (Lars)
	* Simple data management
	* Excursion: source and documenting sources
	* Complicated data management


* 14:30-15:00 Wrap up

Additional resources
--------------------
 * [Some programs referenced in the class](programs.html)
 * Basics courses for SAS, Stata, R, Matlab at [CISER](http://www.ciser.cornell.edu) at [http://ciser.cornell.edu/beta/workshops/](http://ciser.cornell.edu/beta/workshops/) (new times will be posted soon)
 * Computing for Data Analysis [Coursera course](https://www.coursera.org/course/compdata) and the [classes on YouTube](https://www.youtube.com/results?search_query=roger+peng+computing+for+data+analysis)
 * [Code and Data](http://faculty.chicagobooth.edu/jesse.shapiro/research/CodeAndData.pdf)
 * Test repository for Subversion: [https://repository.vrdc.cornell.edu/public/test](https://repository.vrdc.cornell.edu/public/test)
 * Assessing time and memory usage in R: [a nice brief tutorial](http://www.johnmyleswhite.com/notebook/2011/10/31/using-sparse-matrices-in-r/) (but with the conclusion to use Matlab...)
 * Learning how to use doParallel in R: [doParallel vignette](http://cran.r-project.org/web/packages/doParallel/vignettes/gettingstartedParallel.pdf)

Acknowledgements
----------------

Source
------
* Git: via [https](https://vilhuberl@bitbucket.org/computing4economists/computing-for-economists) (login required)
* Web: [http://www.vrdc.cornell.edu/computing-for-economists/](http://www.vrdc.cornell.edu/computing-for-economists/)


