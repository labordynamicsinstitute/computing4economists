
%This program implements a monte carlo simulation of a neighborhood choice
%spatial equilibrium.

%%Setting parameters of the simulation

%Total number of students
N = 1000;
%Number of schools/neighborhoods to choose from
S = 10;
%Number of observable student characteristics
L = 6;
%Number of unobservable student characteristics
M = 3;
%Number of school/neighborhood amenities that affect neighborhood
%desirability
K = 3;
%P will measure the number of school characteristics that don't affect
%choice.
P = 1;

Schoolsize = repmat(N/S,S,1);

%% Creating distributions from which student characteristics and school amenities will be drawn


%Requires drawing a random covariance matrix that is positive definite.
Temp = rand(L+M,L+M);
CovXast = Temp*Temp';

%Imposing that observables and unobservables are uncorrelated
CovXast(L+1:L+M,1:L) = zeros(M,L);
CovXast(1:L,(L+1):(L+M)) = zeros(L,M);

Temp = rand(K+P,K+P);
CovA = Temp*Temp';

%% Simulating draws

X_ast = mvnrnd(zeros(L+M,1),CovXast,N);
X_O = X_ast(:,1:L);
X_U = X_ast(:,(L+1):(L+M));

A_ast = mvnrnd(zeros(K+P,1),CovA,S);
%Want to make the desired amenities positive, but still normally distributed.
A_ast = A_ast + 10;
A = A_ast(:,1:K);
SQ = A_ast(:,(K+1):K+P);

%Simulating preference parameters Delta.  Need one delta for each
%characteristic/amenity combination
Delta = randn(L+M,K);
Delta_O = Delta(1:L,:);
Delta_U = Delta((L+1):L+M,:);

Kappa = randn(N,K);

Eps = randn(N,S);


%% Constructing willingness to pay

%Using nested for-loops

tic
WTP_forloop = zeros(N,S);

for i = 1:N
for s = 1:S
for k = 1:K
for l = 1:L
WTP_forloop(i,s) = WTP_forloop(i,s) + X_O(i,l)*Delta_O(l,k)*A(s,k);
end
for m = 1:M
WTP_forloop(i,s) = WTP_forloop(i,s) + X_U(i,m)*Delta_U(m,k)*A(s,k);  
end
WTP_forloop(i,s) = WTP_forloop(i,s) + Kappa(i,k)*A(s,k);
end
WTP_forloop(i,s) = WTP_forloop(i,s) + Eps(i,s);
end
end
%}
toc
%Remove l and m loops using matrix algebra
tic
WTP_forloop2 = zeros(N,S);
for i = 1:N
for s = 1:S
for k = 1:K
WTP_forloop2(i,s) = WTP_forloop2(i,s) + (X_O(i,:)*Delta_O(:,k) + X_U(i,:)*Delta_U(:,k))*A(s,k);
WTP_forloop2(i,s) = WTP_forloop2(i,s) + Kappa(i,k)*A(s,k);
end
WTP_forloop2(i,s) = WTP_forloop2(i,s) + Eps(i,s);
end
end
toc

%To see efficiency gains from vectorization, compare the times for the
%above loops when L = 1000, M = 1000.  Gains from vectorization tend to
%appear when the loops they replace are long.
%{


tic
WTP_forloop3 = zeros(N,S);
for i = 1:N
for s = 1:S
WTP_forloop3(i,s) = WTP_forloop3(i,s) + (X_O(i,:)*Delta_O + X_U(i,:)*Delta_U)*A(s,:)' + Kappa(i,:)*A(s,:)' + Eps(i,s);
end
end
toc
tic
%Remove i and s loops using further matrix algrebra!
WTP = (X_O*Delta_O + X_U*Delta_U + Kappa)*(A') + Eps;
toc

%% Setting up the linear programming problem

%Reshaping the matrix of choice-specific utilities into an (N*S)x1 vector.
%The first N elements represent each student's willingness to pay for
%school 1, the next N their willingness to pay for school 2, and so on.
WTP_vec = reshape(WTP,size(WTP,1)*size(WTP,2),1);

%Creating a matrix of constraints where each row constrains the number of
%students choosing a given school not to exceed the number of slots.

%Schoolsizeconstraints_temp = kron(eye(N),ones(1,S));
Schoolsizeconstraint = sparse(kron((1:S)',ones(N,1)),(1:N*S)',ones(N*S,1),S,N*S,N*S);

%Creating a matrix of constraints where each row constraints each student
%to choose exactly one school.

%Oneschperchildconstraints_temp = kron(ones(1,S),eye(N));
Oneschperchildconstraint = sparse(kron(ones(S,1),(1:N)'),(1:N*S)',ones(N*S,1),N,N*S,N*S);




Constraint_matrix = [Schoolsizeconstraint;Oneschperchildconstraint];
Constraint_values = [Schoolsize;ones(N,1)];
lb = sparse(N*S,1);
ub = sparse(ones(N*S,1));
tic
curroptions = optimset('Diagnostics','on','Display','iter','LargeScale','on');
[Assignment,fval,exitflag,output,lambda] = linprog(-1*WTP_vec,[],[],Constraint_matrix,Constraint_values,lb,ub,[],curroptions);
toc
%Have not constrained each element of Assignment to be 0 or 1, only to be
%between 0 and 1. But minimizing value will only be between 0 and 1 if
%there are multiple allocations which yield the same total utility (in
%which case any arbitrary linear combination between these two allocations
%will also yield maximum surplus.  Will choose an allocation among the
%optimal set by assigning all values greater than .5 to 1, less than .5 to
%0.
Temp = (Assignment < .5);
Temp2 = (Assignment > .5);
Assignment2 = Assignment;
Assignment2(Temp) = 0;
Assignment2(Temp2) = 1;
Check = find((Schoolsizeconstraint*Assignment2 == Schoolsize) ~=1);
Check2 = find((Oneschperchildconstraint*Assignment2 == ones(N,1)) ~=1);

%% Creating School Averages of Student Observable and Unobservable Characteristics

%Rearranging the assignment vector into a matrix where each student has a
%one in a single column (the one corresponding to the school they have
%chosen.
Assignment2 = reshape(Assignment2,N,S);

Assignment3 = Assignment2';
%Want to convert logical matrix into a single vector with the index number
%of the chosen school for each student.
Assignment3 = logical(Assignment3);
Temp = repmat((1:S)',1,N);
Schoolassign = Temp(Assignment3);


%Suppose you want to find the willingness to pay of each individual at
%their chosen school.  
%Could try using: 
WTP_choice = WTP(:,Schoolassign);

%But you would end up with an NxN matrix where kth column consists of all
%students WTP at the school chosen by the kth student.  

%To select individual, non-contiguous points in a matrix, need to use
%linear indexing.

%Find the linear index values of the elements of the WTP matrix corresponding to
%students' chosen schools.
Lin_index =  sub2ind(size(WTP),(1:N)',Schoolassign);
%Evaluate the WTP matrix at the linear indexed list to obtain a vector of
%each student's WTP at their chosen school.
WTP_choice = WTP(Lin_index);


X_O = X_O - repmat(mean(X_O),N,1);
X_U = X_U - repmat(mean(X_U),N,1);
A = A - repmat(mean(A),S,1);
SQ = SQ - repmat(mean(SQ),S,1);

Y = sum(X_O,2) + sum(X_U,2) + sum(SQ(Schoolassign),2);


X_Os = zeros(S,L);
X_Us = zeros(S,M);
Kappa_s = zeros(S,K);
Epsilons =  zeros(S,1);
U_s = zeros(S,1);
Y_s = zeros(S,1);

tic
for l = 1:L
X_Os(:,l) = accumarray(Schoolassign,X_O(:,l),[],@mean);
end
toc
%Or, can get school means for all S schools for all L characteristics in
%one line.  But is it faster?
tic
X_Os_2 = accumarray([repmat(Schoolassign,L,1),kron((1:L)',ones(N,1))],X_O(:),[],@mean);
toc

for m = 1:M
X_Us(:,m) = accumarray(Schoolassign,X_U(:,m),[],@mean);    
end
X_Us_2 = accumarray([repmat(Schoolassign,M,1),kron((1:M)',ones(N,1))],X_U(:),[],@mean);
U_s = accumarray(Schoolassign,WTP_choice,[],@mean);
Y_s = accumarray(Schoolassign,Y,[],@mean);

%Or, could loop over S instead of L or M.  Not helpful in this case because
%S > L, S > M.
tic
X_Os_3 = zeros(S,L);
X_Us_3 = zeros(S,M);
for i = 1:S

Temp = (Schoolassign==i); 
X_Os_3(i,:) = mean(X_O(Temp,:));  
X_Us_3(i,:) = mean(X_U(Temp,:));
Kappa_s(i,:) = mean(Kappa(Temp,:));
Epsilons(i) = mean(Eps(Schoolassign==i,i));
U_s(i) = mean(WTP(Schoolassign==i,i));
Y_s(i) = mean(Y(Schoolassign==i));
end
toc

%% Evaluating the efficacy of using a vector of school-average observables as a control
%function for school-average unobservables

%Adding a constant to the regression.
X_Os_const = [ones(S,1),X_Os];
X_Us_sum = sum(X_Us,2);

Beta_sum_XU = regress(X_Us_sum,X_Os_const);
Rsquared_XUsum =  var(X_Os_const*Beta_sum_XU)/var(X_Us_sum)


Beta_XU_XO = (X_Os_const'*X_Os_const)\(X_Os_const'*X_Us);
Rsquared_XU = var([ones(S,1),X_Os]*Beta_XU_XO)./var(X_Us);

%{
Beta_collect_XU = zeros(L+1,M);
Rsquared_XU = zeros(M,1);
Beta_collect_A = zeros(L+1,K);
Rsquared_A = zeros(K,1);
Beta_collect_kappa = zeros(L+1,K);
Rsquared_Kappa = zeros(K,1);
for j = 1:M
Beta_collect_XU(:,j) = regress(X_Us(:,j),[ones(S,1),X_Os]);
Rsquared_XU(j) = var([ones(S,1),X_Os]*Beta_collect_XU(:,j))/var(X_Us(:,j));
end
for k = 1:K
Beta_collect_A(:,k) = regress(A(:,k),[ones(S,1),X_Os]);
Rsquared_A(k) =  var([ones(S,1),X_Os]*Beta_collect_A(:,k))/var(A(:,k));
Beta_collect_kappa(:,k) = regress(Kappa_s(:,k),[ones(S,1),X_Os]);
Rsquared_Kappa(k) =  var([ones(S,1),X_Os]*Beta_collect_kappa(:,k))/var(Kappa_s(:,k));
end
Beta_Y = regress(Y_s,[ones(S,1),X_Os,SQ]);
%}








%}


