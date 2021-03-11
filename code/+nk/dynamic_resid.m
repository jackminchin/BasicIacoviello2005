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
    T = nk.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(8, 1);
lhs = 1/(exp(y(5))-params(8)*exp(y(1)))-params(8)*params(1)/exp(y(11))-exp(y(5))*params(8);
rhs = T(3);
residual(1) = lhs - rhs;
lhs = y(7);
rhs = y(5)+(params(2)-1)*y(6);
residual(2) = lhs - rhs;
lhs = y(9);
rhs = params(1)*y(12)-params(4)*(y(4)-log(params(3)));
residual(3) = lhs - rhs;
lhs = y(8);
rhs = params(5)*y(2)+y(9)*(1-params(5))*(1+params(6))+(1-params(5))*params(7)*y(3)+(1-params(5))*(-log(params(1)))+x(it_, 1);
residual(4) = lhs - rhs;
lhs = y(7);
rhs = y(3)-y(4)-y(6);
residual(5) = lhs - rhs;
lhs = y(3);
rhs = y(6);
residual(6) = lhs - rhs;
lhs = y(3);
rhs = y(5);
residual(7) = lhs - rhs;
lhs = y(10);
rhs = params(8)*params(1)/exp(y(11));
residual(8) = lhs - rhs;

end
