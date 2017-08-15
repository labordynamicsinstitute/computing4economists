Computing for Economists Workshop
========================================================
transition: fade
author: Lars Vilhuber, with  Flavio Stanchi, Sylverie Herbert, Jean-Francois Houde
date: 2017/8/14-2017/8/15

(the third day 2017/8/16 is **optional**, participate only if you are **NOT** doing TA training)

**Location**: *Ives 111* _|_
**Time**: *9:00 - 4:00 p.m.* (we will typically end earlier)


**[Registration](https://cornell.qualtrics.com/jfe/form/SV_0rdXep3H7gbzzOl)**
_|_
[Goals](#/1)  _|_ **[Requirements](#/2)**

Goal
========================================================
The goal of this workshop is to showcase computer-oriented techniques and tools for economics students, from basic command line tools on Linux and Mac to version control to optimization and parallelization techniques for high-performance computing. The goal is NOT to teach a full
course on SAS, Stata, Matlab, R, Python, MPI, Fortran, etc. - there are other classes for that. We will teach just enough of each programming language to
be able to highlight additional techniques (for SAS, Python, and Matlab, we will have specialized workshops on each in a bit more depth, if requested).
 This workshop is designed to open your eyes to the possibilities, scratching
the surface, but mostly not diving into any particular depths. Follow-on short courses may solve those needs. For
specific programming languages, we point to offerings elsewhere on campus, for instance at [CISER](http://www.ciser.cornell.edu). [more](#/2)

===

We highlight that this is a workshop - we will work on problems as a group, drawing on expertise in the room as needed. If you have a specific question, and want to work on it, we may do so. If you want to primarily listen, that's fine too.

Target group
------------
Second year Ph.D. in Economics and higher, or other social sciences. If you haven't taken the course in the past, or want a refresher, you should participate

Requirements
-------------
* Working knowledge of at least one statistical programming language (R, SAS, Stata, Matlab, Gauss) - the specific languange is not important.
* Bring your laptop to class!

Setup
========================================================
* [Register](https://cornell.qualtrics.com/jfe/form/SV_0rdXep3H7gbzzOl)
* Request an account on Econ Cluster on the [account request page](https://www.cac.cornell.edu/services/external/RequestCACid.aspx?ProjectID=lv39_0004)
* Fill out the online survey (sent out by email) ( results for [2013](SurveyResults2013.pdf),  [2014](Computing_in_Economics_2014_results.pdf) and [2015](Computing_in_Economics_Workshop_Knowledge_2015.pdf))


Tentative Agenda - Day 1
========================================================
* 9:00-9:30 Introduction (Lars) with reference to [earlier](Computing_in_Economics_Workshop_Knowledge_2015.pdf) survey results.

* 9:30-10:15 Motivation: [HP resources at Cornell, elsewhere](../documents/hp-resources-at-cornell.pdf) (Lars)

* <>

* 10:30-12:00 [Basics](../documents/hp-basics.pdf) (Lars),   The command line ([lecture notes](../Git_CL_Slides/Slides_CommandLine.pdf))

* 12:00-12:30 [Getting access to ECCO (SSH and NX)](../documents/access-to-ecco.pdf)

***

* 13:30-15:00 Learning to qsub - Hello World example on ECCO (live in class)

* <>

* 15:15-16:45 [Introduction to parallel processing](../web/day2-3.html) (Lars)


Tentative Agenda - Day 2
========================================================

* 9:00-10:30 Git   [Basics of version control](../documents/basics_of_version_control.pdf) (Lars), Subversion (Flavio):  [lecture notes](../SVN_Presentation/Subversion_slides.pdf) ( [Long tutorial referenced in class](COMPUTER_Subversion_LongTutorial.pdf) ) Git (Sylverie) [slides](../Git_CL_Slides/Slides_Git.pdf),  [notes](../Git_CL_Slides/Git_Notes.pdf), Setting up your repositories

* <>


* 11:00-12:00 Subroutines and scalable programming (Lars) [slides](../documents/HPC_Class_SubRoutines.pdf),


***

* 13:00-14:45 Putting it into practice: Trying out parallel processing


* 15:00-16:30 CHOICES:
  * [A practical example: Big Data Matlab programming](../documents/Matlab%20Big%20Data%20Techniques.pdf)
  * [Leveraging parallel programming techniques in Matlab](../Matlab/peng-matlabparallel.pdf)
  * Explicit parallel programming in SAS (Lars) [Example ](https://github.com/labordynamicsinstitute/code-fragments/tree/master/sas/mpconnect)
  * Parallel programming in Python (Jean-Francois)


Tentative Agenda - Day 3 (optional)
========================================================

(note: Day 3 is optional - it overlaps with TA training, and the latter takes precedence)
* 9:00-11:00 Going beyond statistical programming languages: compilers, libraries, and virtual machines - setting up an Amazon EC2 server (live) ([more in-depth tutorial](https://blogs.aws.amazon.com/bigdata/post/Tx3IJSB6BMHWZE5/Running-R-on-AWS))
* 11:00-12:00  CHOICES (tentative)
  *  [Considerations for data management](../web/coming-soon.html) (Lars)
  *  Setting up a cluster (experimental)
* 12:00 Workshop ends

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
* Git: [on Bitbucket](https://bitbucket.org/computing4economists/computing-for-economists)
* Web: [http://www.vrdc.cornell.edu/computing-for-economists/](http://www.vrdc.cornell.edu/computing-for-economists/)
