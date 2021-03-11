function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = basic_IAC_LV1.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(17, 1);
lhs = 1/exp(y(5));
rhs = params(1)*exp(y(9))/(exp(y(25))*exp(y(22)));
residual(1) = lhs - rhs;
lhs = exp(y(14));
rhs = T(1);
residual(2) = lhs - rhs;
lhs = y(20)/exp(y(11));
rhs = exp(y(13))/exp(y(5))-params(1)*exp(y(24))/exp(y(22));
residual(3) = lhs - rhs;
lhs = exp(y(6));
rhs = exp(y(15))*exp(y(8))+exp(y(10))+exp(y(13))*(exp(y(3))-exp(y(12)))-T(2);
residual(4) = lhs - rhs;
lhs = exp(y(15));
rhs = T(3);
residual(5) = lhs - rhs;
lhs = y(20)/exp(y(12));
rhs = T(4)*T(5)-params(2)*(1-params(4))*exp(y(24))/exp(y(23));
residual(6) = lhs - rhs;
lhs = y(20);
rhs = params(14)*params(13)+x(it_, 1);
residual(7) = lhs - rhs;
lhs = exp(y(10));
rhs = T(6);
residual(8) = lhs - rhs;
lhs = exp(y(17));
rhs = exp(y(21))*T(7)*T(8);
residual(9) = lhs - rhs;
lhs = exp(y(14));
rhs = T(8)*T(10)*T(11);
residual(10) = lhs - rhs;
lhs = exp(y(15));
rhs = T(11)*T(7)*exp(y(21))*params(5)*T(12);
residual(11) = lhs - rhs;
lhs = y(21);
rhs = 0.8*y(4)+x(it_, 4);
residual(12) = lhs - rhs;
lhs = y(16);
rhs = params(1)*y(25)-params(12)*(y(19)-log(params(6)))+x(it_, 3);
residual(13) = lhs - rhs;
lhs = y(9);
rhs = y(1)*params(8)+y(16)*(1-params(8))*(1+params(9))+y(17)*(1-params(8))*params(10)+(1-params(8))*(-log(params(1)))*x(it_, 2);
residual(14) = lhs - rhs;
lhs = exp(y(17));
rhs = exp(y(5))+exp(y(6));
residual(15) = lhs - rhs;
lhs = exp(y(18));
rhs = exp(y(5))+exp(y(6));
residual(16) = lhs - rhs;
lhs = exp(y(11))+exp(y(12));
rhs = 1;
residual(17) = lhs - rhs;

end
