function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = basic_IAC_LV1.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(17, 29);
g1(1,5)=(-exp(y(5)))/(exp(y(5))*exp(y(5)));
g1(1,22)=T(13);
g1(1,9)=(-(params(1)*exp(y(9))/(exp(y(25))*exp(y(22)))));
g1(1,25)=T(13);
g1(2,5)=(-T(1));
g1(2,7)=(-(exp(y(5))*exp(y(7))*getPowerDeriv(exp(y(7)),params(7)-1,1)));
g1(2,14)=exp(y(14));
g1(3,5)=(-((-(exp(y(5))*exp(y(13))))/(exp(y(5))*exp(y(5)))));
g1(3,22)=(-(exp(y(22))*params(1)*exp(y(24))))/(exp(y(22))*exp(y(22)));
g1(3,11)=(-(y(20)*exp(y(11))))/(exp(y(11))*exp(y(11)));
g1(3,13)=(-(exp(y(13))/exp(y(5))));
g1(3,24)=params(1)*exp(y(24))/exp(y(22));
g1(3,20)=1/exp(y(11));
g1(4,6)=exp(y(6));
g1(4,8)=(-(exp(y(15))*exp(y(8))));
g1(4,1)=T(2);
g1(4,2)=T(2);
g1(4,10)=(-exp(y(10)));
g1(4,3)=(-(exp(y(13))*exp(y(3))));
g1(4,12)=(-(exp(y(13))*(-exp(y(12)))));
g1(4,13)=(-(exp(y(13))*(exp(y(3))-exp(y(12)))));
g1(4,15)=(-(exp(y(15))*exp(y(8))));
g1(4,16)=(-(exp(y(1))*exp(y(2))*exp(y(16))))/(exp(y(16))*exp(y(16)));
g1(5,6)=(-T(3));
g1(5,8)=(-(exp(y(6))*exp(y(8))*getPowerDeriv(exp(y(8)),params(7)-1,1)));
g1(5,15)=exp(y(15));
g1(6,6)=(-(T(5)*(-exp(y(6)))/(exp(y(6))*exp(y(6)))));
g1(6,23)=params(2)*(1-params(4))*(-(exp(y(24))*exp(y(23))))/(exp(y(23))*exp(y(23)));
g1(6,9)=(-(T(4)*(-((-(exp(y(9))*exp(y(25))*exp(y(24))*params(4)))/(exp(y(9))*exp(y(9)))))));
g1(6,12)=(-(y(20)*exp(y(12))))/(exp(y(12))*exp(y(12)));
g1(6,13)=(-(exp(y(13))*T(4)));
g1(6,24)=(-(T(16)-params(2)*(1-params(4))*exp(y(24))/exp(y(23))));
g1(6,25)=(-T(16));
g1(6,20)=1/exp(y(12));
g1(7,20)=1;
g1(7,26)=(-1);
g1(8,9)=(-(exp(y(25))*exp(y(24))*params(15)*(-(exp(y(9))*exp(y(12))*params(4)))/(exp(y(9))*exp(y(9)))));
g1(8,10)=exp(y(10));
g1(8,12)=(-T(6));
g1(8,24)=(-T(6));
g1(8,25)=(-T(6));
g1(9,7)=(-(exp(y(21))*T(8)*T(14)));
g1(9,8)=(-(exp(y(21))*T(7)*T(15)));
g1(9,17)=exp(y(17));
g1(9,21)=(-(exp(y(21))*T(7)*T(8)));
g1(10,7)=(-(T(11)*T(8)*params(5)*exp((-y(21)))*exp(y(7))*getPowerDeriv(exp(y(7)),params(5)-1,1)));
g1(10,8)=(-(T(11)*T(10)*T(15)));
g1(10,14)=exp(y(14));
g1(10,19)=(-(T(8)*T(10)*(-exp(y(19)))/(exp(y(19))*exp(y(19)))));
g1(10,21)=(-(T(11)*T(8)*T(9)*params(5)*(-exp((-y(21))))));
g1(11,7)=(-(T(11)*T(12)*exp(y(21))*params(5)*T(14)));
g1(11,8)=(-(T(11)*T(7)*exp(y(21))*params(5)*exp(y(8))*getPowerDeriv(exp(y(8)),(-params(5)),1)));
g1(11,15)=exp(y(15));
g1(11,19)=(-(T(7)*exp(y(21))*params(5)*T(12)*(-exp(y(19)))/(exp(y(19))*exp(y(19)))));
g1(11,21)=(-(T(11)*T(7)*exp(y(21))*params(5)*T(12)));
g1(12,4)=(-0.8);
g1(12,21)=1;
g1(12,29)=(-1);
g1(13,16)=1;
g1(13,25)=(-params(1));
g1(13,19)=params(12);
g1(13,28)=(-1);
g1(14,1)=(-params(8));
g1(14,9)=1;
g1(14,16)=(-((1-params(8))*(1+params(9))));
g1(14,17)=(-((1-params(8))*params(10)));
g1(14,27)=(-((1-params(8))*(-log(params(1)))));
g1(15,5)=(-exp(y(5)));
g1(15,6)=(-exp(y(6)));
g1(15,17)=exp(y(17));
g1(16,5)=(-exp(y(5)));
g1(16,6)=(-exp(y(6)));
g1(16,18)=exp(y(18));
g1(17,11)=exp(y(11));
g1(17,12)=exp(y(12));

end
