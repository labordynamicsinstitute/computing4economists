#!/bin/bash

python3 webscrape.py
stata -b do dataprep.do
R --vanilla < analysis.R > analysis.Rlog
# Rscript analysis.R
