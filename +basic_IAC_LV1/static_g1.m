function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = basic_IAC_LV1.static_g1_tt(T, y, x, params);
end
g1 = zeros(17, 17);
g1(1,1)=(-exp(y(1)))/(exp(y(1))*exp(y(1)))-T(13);
g1(1,5)=(-(params(1)*exp(y(5))/(exp(y(1))*exp(y(12)))));
g1(1,12)=(-T(13));
g1(2,1)=(-T(1));
g1(2,3)=(-(exp(y(1))*exp(y(3))*getPowerDeriv(exp(y(3)),params(7)-1,1)));
g1(2,10)=exp(y(10));
g1(3,1)=(-((-(exp(y(1))*exp(y(9))))/(exp(y(1))*exp(y(1)))-(-(exp(y(1))*params(1)*exp(y(9))))/(exp(y(1))*exp(y(1)))));
g1(3,7)=(-(y(16)*exp(y(7))))/(exp(y(7))*exp(y(7)));
g1(3,9)=(-T(2));
g1(3,16)=1/exp(y(7));
g1(4,2)=exp(y(2));
g1(4,4)=(-(exp(y(11))*exp(y(4))));
g1(4,5)=T(3);
g1(4,6)=(-(exp(y(6))-T(3)));
g1(4,11)=(-(exp(y(11))*exp(y(4))));
g1(4,12)=(-(exp(y(12))*exp(y(5))*exp(y(6))))/(exp(y(12))*exp(y(12)));
g1(5,2)=(-T(4));
g1(5,4)=(-(exp(y(2))*exp(y(4))*getPowerDeriv(exp(y(4)),params(7)-1,1)));
g1(5,11)=exp(y(11));
g1(6,2)=(-(T(5)*(-exp(y(2)))/(exp(y(2))*exp(y(2)))-params(2)*(1-params(4))*(-(exp(y(9))*exp(y(2))))/(exp(y(2))*exp(y(2)))));
g1(6,5)=(-(1/exp(y(2))*(-((-(exp(y(5))*exp(y(12))*exp(y(9))*params(4)))/(exp(y(5))*exp(y(5)))))));
g1(6,8)=(-(y(16)*exp(y(8))))/(exp(y(8))*exp(y(8)));
g1(6,9)=(-T(6));
g1(6,12)=(-(1/exp(y(2))*(-(exp(y(12))*exp(y(9))*params(4)/exp(y(5))))));
g1(6,16)=1/exp(y(8));
g1(7,16)=1;
g1(8,5)=(-(exp(y(12))*exp(y(9))*(-(exp(y(5))*exp(y(8))*params(4)))/(exp(y(5))*exp(y(5)))));
g1(8,6)=exp(y(6));
g1(8,8)=(-T(7));
g1(8,9)=(-T(7));
g1(8,12)=(-T(7));
g1(9,3)=(-(exp(y(17))*T(9)*T(14)));
g1(9,4)=(-(exp(y(17))*T(8)*T(15)));
g1(9,13)=exp(y(13));
g1(9,17)=(-(exp(y(17))*T(8)*T(9)));
g1(10,3)=(-(T(11)*T(9)*params(5)*exp(y(3))*getPowerDeriv(exp(y(3)),params(5)-1,1)));
g1(10,4)=(-(T(11)*T(10)*T(15)));
g1(10,10)=exp(y(10));
g1(10,15)=(-(T(9)*T(10)*(-exp(y(15)))/(exp(y(15))*exp(y(15)))));
g1(11,3)=(-(T(11)*T(12)*params(5)*T(14)));
g1(11,4)=(-(T(11)*params(5)*T(8)*exp(y(4))*getPowerDeriv(exp(y(4)),(-params(5)),1)));
g1(11,11)=exp(y(11));
g1(11,15)=(-(params(5)*T(8)*T(12)*(-exp(y(15)))/(exp(y(15))*exp(y(15)))));
g1(12,17)=exp(y(17))-exp(y(17))*0.8;
g1(13,12)=1-params(1);
g1(13,15)=params(12);
g1(14,5)=1-params(8);
g1(14,12)=(-((1-params(8))*(1+params(9))));
g1(14,13)=(-((1-params(8))*params(10)));
g1(15,1)=(-exp(y(1)));
g1(15,2)=(-exp(y(2)));
g1(15,13)=exp(y(13));
g1(16,1)=(-exp(y(1)));
g1(16,2)=(-exp(y(2)));
g1(16,14)=exp(y(14));
g1(17,7)=exp(y(7));
g1(17,8)=exp(y(8));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
