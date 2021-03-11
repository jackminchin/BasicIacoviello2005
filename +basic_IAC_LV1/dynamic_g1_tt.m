function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 15);

T = basic_IAC_LV1.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(12) = (-((-(params(1)*exp(y(9))*exp(y(25))*exp(y(22))))/(exp(y(25))*exp(y(22))*exp(y(25))*exp(y(22)))));
T(13) = exp(y(7))*getPowerDeriv(exp(y(7)),params(5),1);
T(14) = exp(y(8))*getPowerDeriv(exp(y(8)),1-params(5),1);
T(15) = T(4)*(-(exp(y(25))*exp(y(24))*params(4)/exp(y(9))));

end
