proc options;
run;


data one;
do i = 1 to 1000000;
do j = 1 to 2000;
output;
end;
end;
run;

proc means data=one;
var i j;
run;

proc print data=one(obs=10);
run;

