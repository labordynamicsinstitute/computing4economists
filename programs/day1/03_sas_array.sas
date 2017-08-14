/* get the ARRAY ID environment variable */
%let sample=%sysget(PBS_ARRAYID);

libname LIBRARY ".";

/* read only one set of obs */
data one;
  set LIBRARY.bigdata(where=(mod(i,100) = &sample. ));
run;

proc means data=one;
var j;
run;


