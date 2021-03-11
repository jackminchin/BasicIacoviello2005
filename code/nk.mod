var Y X C l w r dp ;
varexo u;
parameters BETA, ETA, XSS, KTILDE, RHO, PHIP, PHIY, h, GAMMA; 

BETA = 0.98 ;
ETA =1.01 ;
XSS = 1.2 ;
KTILDE = 0.0858 ;
RHO = 0.8;
PHIP = 0.5 ;
PHIY = 0 ;
STDERR_AE = 0.0028 ;
h = 0.1;

model;

(1/(exp(C) - h * exp(C(-1)))) - ((BETA * h)/(exp(C(+1)))) - h * exp(C) = 
BETA * (exp(r) / exp(dp)) * ((1/(exp(C(+1)) - h * exp(C))) - (BETA * h) /(exp(C(+2))) - h * exp(C(+1)));

w = (ETA - 1) * l + C;

dp = BETA*dp(+1) - KTILDE*(X - log(XSS));

r = RHO*r(-1) + (1-RHO)*(1+PHIP)*dp + (1-RHO)*PHIY*Y + (1-RHO)*log(1/BETA) + u ;

w = Y - X - l ;

Y=l;

Y=C;

end ;

initval;
r = 0.01;
Y = 0;
X = 0;
C = 0;
l = 0;
w = 0;
dp = 0;
end;
steady;


shocks;
var u; stderr 0.0028;
end; 

stoch_simul(order=1, irf=20, nograph) Y dp X r C;
