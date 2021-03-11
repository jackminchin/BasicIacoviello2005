function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = basic_IAC_LV09.static_resid_tt(T, y, x, params);
end
residual = zeros(17, 1);
lhs = 1/exp(y(1));
rhs = params(1)*exp(y(5))/(exp(y(1))*exp(y(12)));
residual(1) = lhs - rhs;
lhs = exp(y(10));
rhs = T(1);
residual(2) = lhs - rhs;
lhs = y(16)/exp(y(7));
rhs = T(2);
residual(3) = lhs - rhs;
lhs = exp(y(2));
rhs = exp(y(11))*exp(y(4))+exp(y(6))-T(3);
residual(4) = lhs - rhs;
lhs = exp(y(11));
rhs = T(4);
residual(5) = lhs - rhs;
lhs = y(16)/exp(y(8));
rhs = T(6);
residual(6) = lhs - rhs;
lhs = y(16);
rhs = params(14)*params(13)+x(1);
residual(7) = lhs - rhs;
lhs = exp(y(6));
rhs = T(7);
residual(8) = lhs - rhs;
lhs = exp(y(13));
rhs = exp(y(17))*T(8)*T(9);
residual(9) = lhs - rhs;
lhs = exp(y(10));
rhs = T(9)*T(11)*T(12);
residual(10) = lhs - rhs;
lhs = exp(y(11));
rhs = T(12)*T(8)*exp(y(17))*params(5)*T(13);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = y(17)*0.8+x(4);
residual(12) = lhs - rhs;
lhs = y(12);
rhs = params(1)*y(12)-params(12)*(y(15)-log(params(6)))+x(3);
residual(13) = lhs - rhs;
lhs = y(5);
rhs = y(5)*params(8)+y(12)*(1-params(8))*(1+params(9))+y(13)*(1-params(8))*params(10)+(1-params(8))*(-log(params(1)))*x(2);
residual(14) = lhs - rhs;
lhs = exp(y(13));
rhs = exp(y(1))+exp(y(2));
residual(15) = lhs - rhs;
lhs = exp(y(14));
rhs = exp(y(1))+exp(y(2));
residual(16) = lhs - rhs;
lhs = exp(y(7))+exp(y(8));
rhs = 1;
residual(17) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
