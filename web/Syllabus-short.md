High-performance computing for Economists
=========================================

Location
--------
*Ives 115*, 2013/8/20-2013/8/22 9:00 - 5:00 p.m. (last day ends at 3:00 p.m.)

Capacity: 32 

Authors
-------
John M. Abowd, Rick Mansfield, Kevin McKinney and Lars Vilhuber

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
* Fill out the online survey (sent out by email) ( [results for 2013](SurveyResults2013.pdf) )

Day 1
-----
* 9:00-9:30 Introduction (Lars)

* 9:30-10:30 [Programming basics](../documents/day1-1.pdf) (Lars)
	* Choosing an editor
	* How to structure programs, texts, etc.
	* A clean sequence of programs
	* NX, SSH, Linux, request an account on cluster
	* Basic scripting

* 10:30-11:30 putting it into practice

* 11:30-12:30 [Basics of version control](../documents/day1-2.pdf) (Lars)
	* File-system based version control 
	* More formal version control
		- Subversion ( [Long tutorial referenced in class](COMPUTER_Subversion_LongTutorial.pdf) )
		- Git
    * Debugging your code
	* Working with servers
	* Setting up infrastructure at Cornell

* 13:30-14:30 Putting it into practice

* 14:30-16:00 [HP resources at Cornell, elsewhere](../documents/day3-1.pdf) (Lars)
	* Basic types of HP computing (multi-threaded, data I/O, big memory)
	* Resources available
		* scaling from workstation to HPC cluster
	* XSEDE and getting there
	* Amazon EC2 and getting there (?)

* 16:00-17:00 Putting it into practice

Day 2
-----
* 9:00-10:30 Subroutines
    * [Example of function programming in R](../documents/day1-3.pdf) (Lars)
    * [Extending the principle to other languages](../documents/HPC_Class_SubRoutines.pdf) (Kevin McKinney)
		* Subroutines in SAS: macros
		* Subroutines in Stata: programs
		* Subroutines in Matlab: function

* 10:30-11:00 Break

* 11:00-12:30 [A practical example: Matlab programming](../documents/Matlab%20Big%20Data%20Techniques.pdf) (Rick)
         * Some additional links
                  * [Matlab memory considerations](http://www.mathworks.com/help/matlab/matlab_prog/strategies-for-efficient-use-of-memory.html)

* 13:30-14:30 Putting it into practice

* 14:30-16:00 [Introduction to parallel processing](../documents/HPC_Class_Parallel.pdf) (Kevin McKinney)
	* Threads
	* Embarassingly parallel problems
	* Basic tools (bash, qsub, ECCO)
	* SAS, Stata, Matlab

* 16:00-17:00 Putting it into practice

Day 3
-----
* 9:00-12:00 Parallel working groups (with breaks)
	* Leveraging parallel programming techniques in SAS [Lars]
	* Leveraging parallel programming techniques in Matlab [Panle/Sida]

* 13:30-14:30 [Considerations for data management](../web/coming-soon.html) (JohnA, Lars)
	* Simple data management
	* Excursion: source and documenting sources
	* Complicated data management


* 14:30-15:00 Wrap up

Additional resources
--------------------
 * [Some programs referenced in the class](programs.html)
 * Basics courses for SAS, Stata, R, Matlab at [CISER](http://www.ciser.cornell.edu) at [http://ciser.cornell.edu/beta/workshops/](http://ciser.cornell.edu/beta/workshops/) (new times will be posted soon)
 * Computing for Data Analysis [Coursera course](https://www.coursera.org/course/compdata) starts Sept 23, 2013.
 * [Code and Data](http://faculty.chicagobooth.edu/jesse.shapiro/research/CodeAndData.pdf)

Acknowledgements
----------------

Source
------
* Git: via [https](https://vilhuberl@bitbucket.org/computing4economists/computing-for-economists) (login required)
* Web: [http://www.vrdc.cornell.edu/computing-for-economists/](http://www.vrdc.cornell.edu/computing-for-economists/)


