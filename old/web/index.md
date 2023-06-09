Computational Tools for Social Scientists Workshop
========================================================
transition: fade
author: Lars Vilhuber, Ivan Rudik, and some others
date: 2021/8/18-2021/8/20


**Location**: In-person, Ives 109 (Aug 18, 19) and Ives 115 (Aug 20)

**Time**: 9:00 a.m. - 4:00 p.m. (some days will end earlier)



**[Registration](https://cornell.ca1.qualtrics.com/jfe/form/SV_8dc16keYOMEc3Xw)**
_|_
[Goals](#/1)  _|_ **[Requirements](#/2)**

Goal
========================================================
The goal of this workshop is to make early-career researchers in the social sciences (e.g. Ph.D. students and early faculty) aware of computational tools and toolkits that will allow them to more efficiently and reproducibly conduct their research. We will showcase computer-oriented techniques and tools, from basic command line tools on Windows, Linux, and Mac, to version control, to optimization and parallelization techniques. These methods are useful not just for high-performance computing, but by necessity make research reproducible. If you touch a computer as part of your research, you should come!

More goals and non-goals
===

This workshop is designed to open your eyes to the possibilities, scratching
the surface, but mostly not diving into any particular depths. The goal is NOT to teach a full
course on SAS, Stata, Matlab, R, Python, MPI, Fortran, etc. - there are other classes for that. We will teach just enough of each programming language to
be able to highlight additional techniques. There will be hands-on training on a few systems (TBD). 
 [more](#/2)

You and the workshop
===

We highlight that this is a workshop - we will work on problems as a group, drawing on expertise in the "room" as needed. If you have a specific question, and want to work on it, we may do so. If you want to primarily listen, that's fine too.

Some parts of the workshop will be asynchronous (pre-recorded), but a significant portion will be live. You should expect to do some exercises each day.

===

Target group
------------
Second year Ph.D. and higher, and faculty, in Economics or other social sciences. If you haven't taken the course in the past, or want a refresher, you should participate

Requirements
-------------
* Working knowledge of at least one statistical programming language (R, SAS, Stata, Matlab, Gauss) - the specific languange is not important.
* An interest in computational social science

Setup
========================================================
* [Register](https://cornell.ca1.qualtrics.com/jfe/form/SV_8dc16keYOMEc3Xw) 
* (optional) Request an account on Econ Cluster on the [BioHPC account request page](https://biohpc.cornell.edu/NewUserRequest.aspx) (add to Comment "Econ Grad Student")
* Various software will be installed as part of the class, as part of a standard toolkit.


Tentative Agenda - Prior to Day 1
=================================
* [Installation checklist](setup-checklist.md) - useful software to have
* Watch Lars' [talk on replicability and reproducibility](https://www.youtube.com/watch?v=pj-y3dLDOEA)
* Learn about the [command line](https://github.com/labordynamicsinstitute/computing4economists/blob/master/Git_CL_Slides/intro_command_line.md) ([lecture notes](../Git_CL_Slides/Slides_CommandLine.pdf)), version control (we will go over a lot of this on Day 1)

Tentative Agenda - Day 1 - morning
================


- 9:00 - 10:00 [Intro](intro.html) and Motivation: why we do this, why we need this (it's not just high-performance computing)
  - Thinking beyond the laptop in front of you ([Basics](../documents/hp-basics-edited.pdf))
  - Collaboration
  - [Reproducibility](http://doi.org/10.5281/zenodo.2621959) (Lars) (also read [arxiv:1609.00037](https://arxiv.org/pdf/1609.00037.pdf))
  - Computing tools at Cornell  ([PDF](../documents/hp-resources-at-cornell.pdf))
- 10:00 - 10:30 Text editors and software-agnostic development environments  (+ hands-on)
  - Visual Studio Code
  - Rstudio
  - Jupyter 
- BREAK

Tentative Agenda - Day 1 - morning
===

- 11:00 - 12:00 Command line or "shell" or "bash" (+ hands-on)
  - Framework: [Carpentries' "The Unix Shell"](https://swcarpentry.github.io/shell-novice/)
  - We'll breeze through Parts 1-3
  - We'll emphasize [pipes](https://swcarpentry.github.io/shell-novice/04-pipefilter/index.html) (used in other programming languages, too), [loops](https://swcarpentry.github.io/shell-novice/05-loop/index.html) (the most basic of high-performance computing!), and [scripts](https://swcarpentry.github.io/shell-novice/06-script/index.html) (make it all reproducible! + we'll need it on Day 2). 
  - You should explore "[Finding things](https://swcarpentry.github.io/shell-novice/07-find/index.html)" on your own (very useful!)
- LUNCH (on your own)

Tentative Agenda - Day 1 - afternoon
================

- 13:00 - 14:30 Version control (hands-on) - Git! 
  - [Basics of version control](../documents/basics_of_version_control.pdf) (Lars).
 [Getting started with Git](https://github.com/labordynamicsinstitute/replicability-training/blob/master/Fall%202019/Basics_of_Git.md), [slides](../Git_CL_Slides/Slides_Git.pdf),  [notes](../Git_CL_Slides/Git_Notes.pdf), [tutorial](https://git-scm.com/docs/gittutorial). 
  - Framework: [Carpentries' "Version Control with Git"](https://swcarpentry.github.io/git-novice/)
  - We'll go through Parts [2](https://swcarpentry.github.io/git-novice/02-setup/index.html), [3](https://swcarpentry.github.io/git-novice/03-create/index.html), and most importantly [4](https://swcarpentry.github.io/git-novice/04-changes/index.html).
  - Collaborating (including with yourself): Parts [7](https://swcarpentry.github.io/git-novice/07-github/index.html) and [8](https://swcarpentry.github.io/git-novice/08-collab/index.html), which kind of assume [13](https://swcarpentry.github.io/git-novice/13-hosting/index.html) - we'll use Github!
  - The other parts are all very useful and powerful and are left to you for later (or when you first need them...)
- BREAK
- 15:00 - 16:00  A reproducible report with Jupyter and Julia (*Ivan Rudik*) ([Ivan's Github](https://github.com/irudik/computational-tools-workshop)) 


Homework - Day 1
================
- Get comfortable with version control
  - create a file, version a file, delete a file, recover a previous file, branch, merge a branch
- try out the Jupyter report yourself
- More info on dynamic documents:
  - RMarkdown
  - Jupyter Notebook (or Python) [with Stata](https://www.stata.com/new-in-stata/jupyter-notebooks/)  

Tentative Agenda - Day 2 (morning)
================

- 9:00 - 9:30 Automation and reproducibility go hand-in-hand 
  - Setup: A simple reproducible report in R
  - Scripting the reproducible report
- 9:30 - 12:00  Docker/ containers (with breaks)
  - What is Docker
  - How do you create and use containers?
  - Full automation

Tentative Agenda - Day 2 (afternoon)
================

- 13:00 - 16:00 [Introduction to parallel processing](../web/day2-3.html) (Lars, *Ivan Rudik*) (with breaks)
  - Subroutines and scalable programming (Lars) [slides](../documents/HPC_Class_SubRoutines-edited.pdf)
  - [High performance computing basics](../documents/hp-basics.pdf), parallel processing
  - Computing resources at Cornell and elsewhere ([BioHPC for economists](https://biohpc.cornell.edu/lab/ecco.htm), CISER, RedCloud, Amazon)
  - [Specific tools on BioHPC](https://biohpc.cornell.edu/lab/doc/using_BioHPC_CPUs.pdf)
  - Hands-on (R, Julia, Stata) (with *Ivan Rudik*) ([Ivan's Github](https://github.com/irudik/computational-tools-workshop))


Tentative Agenda - Day 3
================

(partially joint with LDI Replicator training)

- 9:00 - 10:00 A [template README](https://social-science-data-editors.github.io/template_README/) for better reproducible packages
- 10:00 - 11:00 Data provenance and citations: what is it, why, how
    - Academic principles of attribution, proper data citation
    - [Extract from longer presentation](../documents/Vilhuber-Presentation2020-2020-06-27-extract.pdf) (original source: [10.5281/zenodo.3911311](http://doi.org/10.5281/zenodo.3911311))
    - [Training manual on data citations](https://labordynamicsinstitute.github.io/replicability-training-curriculum/datacitations.html), an expanded version of [guidance](https://social-science-data-editors.github.io/guidance/addtl-data-citation-guidance.html)


Awesome other resources
=======================

There are full 13-week graduate-level courses. The information we'll have touched on here can serve as a starting point for many of those dedicated courses, or you may be able to peruse and learn on your own. Let me just call out a few by economists (there are many, and apologies if I missed some):

- Grant McDermott's U of Oregon class at [https://github.com/uo-ec607/lectures](https://github.com/uo-ec607/lectures)
- Tyler Ransom's U of Oklahoma class at [https://github.com/tyleransom/DScourseS21](https://github.com/tyleransom/DScourseS21)

Past contributors
=================
John Abowd, Rick Mansfield, Daniel Lin,
    Hautahi Kingi, Flavio Stanchi, Jean-Francois Houde, 
    Sylverie Herbert, Sida Peng,	 Kevin L. McKinney

Source
==========
* Git: [on Github](https://github.com/labordynamicsinstitute/computing4economists)
* Web: [https://labordynamicsinstitute.github.io/computing4economists/](https://labordynamicsinstitute.github.io/computing4economists/)
