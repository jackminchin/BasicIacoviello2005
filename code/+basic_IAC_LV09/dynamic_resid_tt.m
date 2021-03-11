function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 12);

T(1) = exp(y(5))*exp(y(7))^(params(7)-1);
T(2) = exp(y(1))*exp(y(2))/exp(y(16));
T(3) = exp(y(6))*exp(y(8))^(params(7)-1);
T(4) = 1/exp(y(6));
T(5) = exp(y(13))-exp(y(25))*exp(y(24))*params(4)/exp(y(9));
T(6) = exp(y(25))*exp(y(24))*params(15)*exp(y(12))*params(4)/exp(y(9));
T(7) = exp(y(7))^params(5);
T(8) = exp(y(8))^(1-params(5));
T(9) = exp(y(7))^(params(5)-1);
T(10) = params(5)*exp((-y(21)))*T(9);
T(11) = 1/exp(y(19));
T(12) = exp(y(8))^(-params(5));

end
