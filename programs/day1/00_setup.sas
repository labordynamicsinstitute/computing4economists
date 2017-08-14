/* this is a test program that does something stupid */
%let max=2000000;
%put %sysget(HOSTNAME);
/*
%let scale=%sysget(PBS_ARRAYID); */
%let scale=1;
%put Scale now is &scale.;

libname LIBRARY ".";
data LIBRARY.bigdata;
do i = 1 to %eval(&max.*&scale.);
j=ranuni(today());
n=_n_;
output;
end;
run;

proc print data=LIBRARY.bigdata(obs=10);
run;

