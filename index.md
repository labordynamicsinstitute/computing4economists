Computational Tools for Social Scientists Workshop
========================================================

**Dates**: 2023-8-14, 2023-8-15, 2022-8-18


**Location**: Ives 108

**Times**: 

- 2023-8-14 and 8-15: 9:00 a.m. - 4:00 p.m. 
- 2023-8-18: TBD

**[Registration](https://cornell.ca1.qualtrics.com/jfe/form/SV_d57io0y4Ublu1WS)** 


# Goal

The goal of this workshop is to make early-career researchers in the social sciences (e.g. Ph.D. students and early faculty) aware of computational tools and toolkits that will allow them to more efficiently and reproducibly conduct their research. We will showcase computer-oriented techniques and tools, from basic command line tools on Windows, Linux, and Mac, to version control, to optimization and parallelization techniques. These methods are useful not just for high-performance computing, but by necessity make research reproducible. If you touch a computer as part of your research, you should come!

# More goals and non-goals

This workshop is designed to open your eyes to the possibilities, scratching
the surface, but mostly not diving into any particular depths. The goal is NOT to teach a full
course on SAS, Stata, Matlab, R, Python, MPI, Fortran, etc. - there are other classes for that. We will teach just enough of each programming language to
be able to highlight additional techniques. There will be hands-on training on a few systems (TBD). 

We will discuss ways to structure your computional projects with an eye on efficiency during development and reproducibility after publication (by AEA standards). Additional topics include reproducibility when data may be private, computation when compute resources are scarce (parallel computing, cloud computing), automation in the service of reliability and reproducibility, and other topics. We will provide hands-on training in at least one advanced computing technique.


# You and the workshop

We highlight that this is a **workshop** - we will work on problems as a group, drawing on expertise in the "room" as needed. If you have a specific question, and want to work on it, we may do so. If you want to primarily listen, that's fine too. You should expect to do some exercises each day. We have a two-day break (to not step on the Economics Department's TA training), and reconvene on the Friday (Aug 19) to discuss outcomes, questions, and next steps for some.

## Target group

Second year Ph.D. and higher, and faculty, in Economics or other social sciences. If you haven't participated in the workshop in the past, or want a refresher, you should participate! If you want to chat about the computational aspects of social sciences, or reproducibility, come and join the workshop!


## Tentative schedule

Details coming soon:

### Monday

Hands-on creation of a reproducible project, ready to be uploaded to a journal replication archive.

- Why you should learn (and love) the command line
    - Framework: [Carpentries' "The Unix Shell"](https://swcarpentry.github.io/shell-novice/)
- Computational empathy: why you should care
- Git, Version control
- How to structure a project
- Data management
    - Example: API use and local temporary storage, see [labordynamicsinstitute/alfred_example](https://github.com/labordynamicsinstitute/alfred_example)
    - Notes from live presentation: coming
- Documenting it all: Readme 
    - [Template README by social science data editors](https://social-science-data-editors.github.io/template_README/template-README.html)
    - Data citations, and [Tricky data citations](https://social-science-data-editors.github.io/guidance/addtl-data-citation-guidance.html)
- Computing environments
    - Yours, mine, theirs: why how you run Stata, or R, or Python matters
    - Some solutions (habits, instructions, Docker)
    - Installing packages, and how not to install them

### Tuesday

Follow-up to Monday, plus some high-performance computing tricks, and how to deposit your own data at a trusted repository (and what all of that means)

- Docker for reproducible research, and why you should know about it, even if you don't use it
- Running R in the cloud
- Docker for Stata 
  - Docker image: [https://hub.docker.com/r/dataeditors/stata17/](https://hub.docker.com/r/dataeditors/stata17/)
  - How Stata in the cloud works: [template with instructions](https://github.com/AEADataEditor/stata-project-with-docker/)
  - Using [Github Codespaces](https://github.com/features/codespaces)
  - Using [Stata on Github Codespaces](https://github.com/labordynamicsinstitute/codespaces-stata-skeleton)
  - (note: to make it work, you need to be a member of a Github "organization")
- An example of an archive ready workflow, from A (acquisition) to Z (Zenodo) and beyond
  - The [overall tutorial](https://labordynamicsinstitute.github.io/tutorial-data-sharing-archiving-2021/), and the [key slides](https://labordynamicsinstitute.github.io/tutorial-data-sharing-archiving-2021/index2.html#/9)
  - [Zenodo upload script](https://github.com/AEADataEditor/Upload-to-Zenodo)
  - [Dataverse upload Github Action](https://github.com/marketplace/actions/dataverse-uploader-action)
- Licensing

### Friday

Details on computing infrastructure for social scientists (in particular economists) at Cornell and elsewhere. When to use what.

