var Cu, Cc, Lu, Lc, R, bc, Hu, Hc, q, Wu, Wc, dp, Y, C, x, J, A; % 14 vars
varexo e, u, n_inf, e_prod;

parameters BETA, T_BETA, j, m, GAMMA, X, ETA, RHO, PHIP, PHIY, OMEGA, KTILDE, J_ss, PP, B;

BETA=0.99;
T_BETA=0.98;
J_ss=0.1;
X=1.2;
KTILDE=0.0858;
ETA=1.01;
m=0.9;
GAMMA=0.64;
X=1.2;
THETA=0.75;
RHO=0.8;
PHIP=0.5;
PHIY=0.8;
STDERR_AE=0.0029;
RHOG=0.8;
PP=0.95;
B=1;

model;
%%%%%%%%%%%
%% Savers - Unconstrained Households
%%%%%%%%%%%

%% EQ 1) FOC for consumption:
1/exp(Cu) = BETA * exp(R) / (exp(dp(+1)) * exp(Cu(+1)));

%% EQ 2) FOC for wages:
exp(Wu)=((exp(Lu))^(ETA-1))*exp(Cu);

%% EQ 3) FOC for housing:
J/exp(Hu) = exp(q)/exp(Cu) - (BETA*exp(q(+1)))/exp(Cu(+1));
 
%%%%%%%%%%%
%% Borrowers - Constrained Households
%%%%%%%%%%%

%% EQ 4) Consumption Flow
exp(Cc)= exp(Wc)*exp(Lc)+exp(bc)+exp(q)*(exp(Hc(-1))-exp(Hc))-(exp(R(-1))*exp(bc(-1)))/exp(dp);

%% EQ 5) FOC for wage
exp(Wc)=exp(Lc)^(ETA-1)*exp(Cc);

%% EQ 6) FOC for housing
J/exp(Hc) = (1/exp(Cc))*(exp(q)-(m*exp(q(+1))*exp(dp(+1)))/exp(R))- T_BETA*(1-m)*(exp(q(+1))/exp(Cc(+1)));

J=PP*J_ss + e;

% EQ 7) Collateral Contraint
exp(bc)=B*(m*exp(Hc)/exp(R))*exp(q(+1))*exp(dp(+1));
 
%%%%%%%%%%%
%% Firms
%%%%%%%%%%%


%% EQ 8) Production Function
exp(Y)=  exp(A) * ((exp(Lu))^GAMMA * exp(Lc)^(1-GAMMA));
 
%% EQ 9) FOC 1
exp(Wu)=GAMMA*exp(-A)*exp(Lu)^(GAMMA-1)*(exp(Lc))^(1-GAMMA)*(1/exp(x));

%% EQ 10) FOC 2
exp(Wc)= GAMMA  * exp(A) * ( exp(Lu) ^GAMMA) * ((exp(Lc))^(-GAMMA))*(1/exp(x));
 
A = 0.8 * A(-1) + e_prod;


%%%%%%%%%%%
%% Monetary Policy
%%%%%%%%%%%

%% EQ 11) NKPC
dp = BETA * dp(+1) - KTILDE*(x-log(X)) + n_inf; 

%% EQ 12) Taylor Rule
R = RHO*R(-1)+(1-RHO)*(1+PHIP)*dp+(1-RHO)*PHIY*Y +(1-RHO)*log(1/BETA) * u;

%%%%%%%%%%%
%% Market Clearing
%%%%%%%%%%%

%% EQ 13) Output
exp(Y)=exp(Cu)+exp(Cc);

%% EQ 16) Consumption
exp(C)=exp(Cu)+exp(Cc);

%% EQ 15) Housing
exp(Hu)+exp(Hc)=1;

end;


initval;
Cu =0;
Cc=0;
Wu=0;
Wc=0;
bc=0;
Lu=0;
Lc=0;
Hu=0;
Hc=0;
dp=0;
R=0.01;
Y=0;
q=0;
x=0;
A=0;
J=0;
end;

steady;

shocks;
var e; stderr 50;
var u; stderr 0.0028 * 1000;
var n_inf; stderr 1;
var e_prod; stderr 0.05;
end;

stoch_simul(order=1, irf=20) Y C dp Cu Cc Hu Hc q A R bc J;