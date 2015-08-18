High-performance computing for Economists
========================================================
transition: fade
author: Lars Vilhuber, with John M. Abowd, Rick Mansfield, Flavio Stanchi, Hautahi Kingi, Sida Peng
date: 2015/8/17-2015/8/19

**Time**: *9:00 - 5:00 p.m.* (we will typically end earlier)

**Location**: *Ives 109*

Goal
========================================================
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
========================================================
* Working knowledge of at least one statistical programming language (R, SAS, Stata, Matlab, Gauss) - the specific languange is not important.
* Bring your laptop to class.

***
* Request an account on Econ Cluster on the [account request page](https://www.cac.cornell.edu/services/external/RequestCACid.aspx?ProjectID=lv39_0004)
* Fill out the online survey (sent out by email) ( results for [2013](SurveyResults2013.pdf),  [2014](Computing_in_Economics_2014_results.pdf) and [2015](Computing_in_Economics_Workshop_Knowledge_2015.pdf))


Tentative Agenda - Day 1
========================================================
* 9:00-9:30 Introduction (Lars) with reference to [2015](Computing_in_Economics_Workshop_Knowledge_2015.pdf) survey results.

* 9:30-10:30 [Basics](../documents/day1-1.pdf) (Lars)

* 10:30-10:45 Break

* 10:45-11:45 The command line [lecture notes](../Git_CL_Slides/Slides_CommandLine.pdf) (Hautahi Kingi)

* 11:45-12:30 [Getting access to ECCO (SSH and NX)](../documents/day1-3.pdf)

***

* 13:30-14:30 (with break) [Basics of version control](../documents/day1-2.pdf) (Lars)
  * Subversion (Flavio Stanchi):  [lecture notes](../SVN_Presentation/Subversion_slides.pdf) ( [Long tutorial referenced in class](COMPUTER_Subversion_LongTutorial.pdf) )
  * Setting up your repositories

* 14:30-14:45 Break

* 14:45-16:00 Git (Hautahi) [lecture notes](../Git_CL_Slides/Git_Notes.pdf)


Tentative Agenda - Day 2
========================================================

* 9:00-9:45 [HP resources at Cornell, elsewhere](../documents/day2-1.pdf) (Lars)

* 9:45-10:00 Break

* 10:00-12:00 [Subroutines and scalable programming](../documents/day2-2.pdf) (Lars)


* 11:00-12:30 Cancelled/On your own: [A practical example: Matlab programming](../documents/Matlab%20Big%20Data%20Techniques.pdf)

***
* 13:30-14:30 [Introduction to parallel processing](../web/day2-3.html) (Lars)

* 14:30-16:00

* 16:00-17:00 Putting it into practice

Tentative Agenda - Day 3
========================================================
* 9:00-12:00 Parallel working groups (with breaks)
  * Leveraging parallel programming techniques in Matlab (Sida) [lecture notes](../Matlab/peng-matlabparallel.pdf)
	* Leveraging parallel programming techniques in SAS (Lars)
		* [Example MP Connect code](http://repository.vrdc.cornell.edu/websvn/listing.php?repname=public.code-fragments&path=%2Ftrunk%2Fsas%2Fmpconnect%2F&#a35a136da6e860bff713e16f3fe2c4bfa)

***

* 13:30-14:30 [Considerations for data management](../web/coming-soon.html) (Lars)

* 14:30-15:00 Wrap up

Additional resources
===============================
 * [Some programs referenced in the class](programs.html)
 * Basics courses for SAS, Stata, R, Matlab at [CISER](http://www.ciser.cornell.edu) at [http://ciser.cornell.edu/beta/workshops/](http://ciser.cornell.edu/beta/workshops/) (new times will be posted soon)
 * Computing for Data Analysis [Coursera course](https://www.coursera.org/course/compdata) and the [classes on YouTube](https://www.youtube.com/results?search_query=roger+peng+computing+for+data+analysis)
 * [Code and Data](http://faculty.chicagobooth.edu/jesse.shapiro/research/CodeAndData.pdf)
 * Assessing time and memory usage in R: [a nice brief tutorial](http://www.johnmyleswhite.com/notebook/2011/10/31/using-sparse-matrices-in-r/) *(but with the conclusion to use Matlab...)*
 * Learning how to use doParallel in R: [doParallel vignette](http://cran.r-project.org/web/packages/doParallel/vignettes/gettingstartedParallel.pdf)

Source
==========
* Git: [on Bitbucket](https://vilhuberl@bitbucket.org/computing4economists/computing-for-economists) (login required)
* Web: [http://www.vrdc.cornell.edu/computing-for-economists/](http://www.vrdc.cornell.edu/computing-for-economists/)
