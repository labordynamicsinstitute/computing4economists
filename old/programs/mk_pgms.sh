#!/bin/bash
outfile=programs.md
cd ../web
cat > $outfile << EOF
High-performance computing for Economists - Programs
====================================================
EOF

function add_day {
cat >> $outfile << EOF

Day $1
-----
EOF
for file in $(find ../programs/day$1 -name \*sh -o -name \*R -o -name \*sas -o -name \*.m | sort)
do
  echo "* [${file##*/}]($file)" >> $outfile
done
}

add_day 1
add_day 2
add_day 3
# add self
echo "Other
-----" >> $outfile
  echo "* [$(basename $0)](../programs/$(basename $0))" >> $outfile

multimarkdown $outfile > $(basename $outfile .md).html 
git add $outfile $(basename $outfile .md).html 


