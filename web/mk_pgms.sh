#!/bin/bash
outfile=programs.md
cat > $outfile << EOF
High-performance computing for Economists - Programs
====================================================

Day 1
-----
EOF

for file in $(find ../programs/day1 -name \*sh -o -name \*R -o -name \*sas| sort)
do
  echo "* [${file##*/}]($file)" >> $outfile
done

multimarkdown $outfile > $(basename $outfile .md).html 
git add $outfile $(basename $outfile .md).html 


