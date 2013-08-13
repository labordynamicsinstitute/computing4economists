High-performance computing for Economists
=========================================

Location
--------
Ives 109, 2013/8/20-2013/8/22 8:30 - 5:00 p.m. (last day ends at 3:00 p.m.)

Authors
-------
John M. Abowd, Rick Mansfield, Kevin McKinney and Lars Vilhuber

Goal
----
The goal of this class is to showcase high-performance techniques and tools for economics students. The goal is NOT to teach a full 
course on SAS, Stata, etc. - there are other classes for that. We will teach just enough of each programming language to
be able to highlight additional techniques. This course is designed to open your eyes to the possibilities, scratching
the surface, but not diving into any particular depths. Follow-on short courses may solve those needs. For
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
* Request an account on Econ Cluster on the [account request page](https://www.cac.cornell.edu/services/external/RequestCACid.aspx?ProjectID=lv39_0005)

Day 1
-----
* 9:00-9:30 Introduction (Lars)

* 9:30-10:30 Programming basics (Lars)
	* Choosing an editor
	* How to structure programs, texts, etc.
	* A clean sequence of programs
	* NX, SSH, Linux, request an account on cluster
	* Basic scripting

* 10:30-11:30 putting it into practice

* 11:30-12:30 Basics of version control (Lars)
	* File-system based version control 
	* More formal version control
		- Subversion
		- Git
	* Working with servers
	* Setting up infrastructure at Cornell

* 13:30-14:30 Putting it into practice

* 14:30-16:00 Considerations for data management (JohnA, Lars)
	* Simple data management
	* Excursion: source and documenting sources
	* Complicated data management

* 16:00-17:00 Putting it into practice

Day 2
-----
* 9:00-10:30 Subroutines: the example of function programming in R (Lars)
	* Basic function programming

* 10:30-11:30 Putting it into practice

* 11:30-12:30 Extending the principle to other languages (Kevin McKinney?)
	* Subroutines in SAS: macros
	* Subroutines in Stata: programs
	* Subroutines in Matlab: function

* 13:30-14:30 Putting it into practice

* 14:30-16:00 A practical example: Matlab programming basics (Rick)

* 16:00-17:00 Putting it into practice

Day 3
-----
* 9:00-10:00 Basics of High-performance computing (Lars)
	* Why do it? Examples
	* Basic types of HP computing (multi-threaded, data I/O, big memory)

* 10:15-12:00 Introduction to parallel processing (Kevin McKinney)
	* Threads
	* SAS, Stata, Matlab
	* Directly programmed (C, MPI)
	* Considerations: Debugging and Code verification

* 13:00-14:00 HP resources at Cornell, elsewhere (Lars, maybe CAC)
	* Basic tools (qsub, VirtualRDC)
	* Resources available
		* scaling from workstation to HPC cluster
	* XSEDE and getting there

* 14:00-15:00 Wrap up

Additional resources
--------------------
* Basics courses for SAS, Stata, R, Matlab at [CISER](http://www.ciser.cornell.edu) at [http://ciser.cornell.edu/beta/workshops/](http://ciser.cornell.edu/beta/workshops/) (new times will be posted soon)
* Computing for Data Analysis [Coursera course](https://www.coursera.org/course/compdata) starts Sept 23, 2013.

Acknowledgements
---------------

Source
------
* Git: via [https](https://vilhuberl@bitbucket.org/computing4economists/computing-for-economists.git) or [SSH](git@bitbucket.org:computing4economists/computing-for-economists.git)
* Web: [http://www.vrdc.cornell.edu/computing-for-economists/](http://www.vrdc.cornell.edu/computing-for-economists/)


