function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 16);

T = basic_IAC_LV1.static_resid_tt(T, y, x, params);

T(14) = (-(params(1)*exp(y(5))*exp(y(1))*exp(y(12))))/(exp(y(1))*exp(y(12))*exp(y(1))*exp(y(12)));
T(15) = exp(y(3))*getPowerDeriv(exp(y(3)),params(5),1);
T(16) = exp(y(4))*getPowerDeriv(exp(y(4)),1-params(5),1);

end
