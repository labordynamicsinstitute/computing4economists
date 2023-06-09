/* this is a test program that does something stupid */
%let max=200000000;
%put %sysget(HOSTNAME);
%let scale=%sysget(PBS_ARRAYID);
%put Scale now is &scale.;
data one;
do i = 1 to %eval(&max.*&scale.);
j=ranuni(today());
output;
end;
run;

