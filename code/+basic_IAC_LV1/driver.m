%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'basic_IAC_LV1';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('basic_IAC_LV1.log');
M_.exo_names = cell(4,1);
M_.exo_names_tex = cell(4,1);
M_.exo_names_long = cell(4,1);
M_.exo_names(1) = {'e'};
M_.exo_names_tex(1) = {'e'};
M_.exo_names_long(1) = {'e'};
M_.exo_names(2) = {'u'};
M_.exo_names_tex(2) = {'u'};
M_.exo_names_long(2) = {'u'};
M_.exo_names(3) = {'n_inf'};
M_.exo_names_tex(3) = {'n\_inf'};
M_.exo_names_long(3) = {'n_inf'};
M_.exo_names(4) = {'e_prod'};
M_.exo_names_tex(4) = {'e\_prod'};
M_.exo_names_long(4) = {'e_prod'};
M_.endo_names = cell(17,1);
M_.endo_names_tex = cell(17,1);
M_.endo_names_long = cell(17,1);
M_.endo_names(1) = {'Cu'};
M_.endo_names_tex(1) = {'Cu'};
M_.endo_names_long(1) = {'Cu'};
M_.endo_names(2) = {'Cc'};
M_.endo_names_tex(2) = {'Cc'};
M_.endo_names_long(2) = {'Cc'};
M_.endo_names(3) = {'Lu'};
M_.endo_names_tex(3) = {'Lu'};
M_.endo_names_long(3) = {'Lu'};
M_.endo_names(4) = {'Lc'};
M_.endo_names_tex(4) = {'Lc'};
M_.endo_names_long(4) = {'Lc'};
M_.endo_names(5) = {'R'};
M_.endo_names_tex(5) = {'R'};
M_.endo_names_long(5) = {'R'};
M_.endo_names(6) = {'bc'};
M_.endo_names_tex(6) = {'bc'};
M_.endo_names_long(6) = {'bc'};
M_.endo_names(7) = {'Hu'};
M_.endo_names_tex(7) = {'Hu'};
M_.endo_names_long(7) = {'Hu'};
M_.endo_names(8) = {'Hc'};
M_.endo_names_tex(8) = {'Hc'};
M_.endo_names_long(8) = {'Hc'};
M_.endo_names(9) = {'q'};
M_.endo_names_tex(9) = {'q'};
M_.endo_names_long(9) = {'q'};
M_.endo_names(10) = {'Wu'};
M_.endo_names_tex(10) = {'Wu'};
M_.endo_names_long(10) = {'Wu'};
M_.endo_names(11) = {'Wc'};
M_.endo_names_tex(11) = {'Wc'};
M_.endo_names_long(11) = {'Wc'};
M_.endo_names(12) = {'dp'};
M_.endo_names_tex(12) = {'dp'};
M_.endo_names_long(12) = {'dp'};
M_.endo_names(13) = {'Y'};
M_.endo_names_tex(13) = {'Y'};
M_.endo_names_long(13) = {'Y'};
M_.endo_names(14) = {'C'};
M_.endo_names_tex(14) = {'C'};
M_.endo_names_long(14) = {'C'};
M_.endo_names(15) = {'x'};
M_.endo_names_tex(15) = {'x'};
M_.endo_names_long(15) = {'x'};
M_.endo_names(16) = {'J'};
M_.endo_names_tex(16) = {'J'};
M_.endo_names_long(16) = {'J'};
M_.endo_names(17) = {'A'};
M_.endo_names_tex(17) = {'A'};
M_.endo_names_long(17) = {'A'};
M_.endo_partitions = struct();
M_.param_names = cell(15,1);
M_.param_names_tex = cell(15,1);
M_.param_names_long = cell(15,1);
M_.param_names(1) = {'BETA'};
M_.param_names_tex(1) = {'BETA'};
M_.param_names_long(1) = {'BETA'};
M_.param_names(2) = {'T_BETA'};
M_.param_names_tex(2) = {'T\_BETA'};
M_.param_names_long(2) = {'T_BETA'};
M_.param_names(3) = {'j'};
M_.param_names_tex(3) = {'j'};
M_.param_names_long(3) = {'j'};
M_.param_names(4) = {'m'};
M_.param_names_tex(4) = {'m'};
M_.param_names_long(4) = {'m'};
M_.param_names(5) = {'GAMMA'};
M_.param_names_tex(5) = {'GAMMA'};
M_.param_names_long(5) = {'GAMMA'};
M_.param_names(6) = {'X'};
M_.param_names_tex(6) = {'X'};
M_.param_names_long(6) = {'X'};
M_.param_names(7) = {'ETA'};
M_.param_names_tex(7) = {'ETA'};
M_.param_names_long(7) = {'ETA'};
M_.param_names(8) = {'RHO'};
M_.param_names_tex(8) = {'RHO'};
M_.param_names_long(8) = {'RHO'};
M_.param_names(9) = {'PHIP'};
M_.param_names_tex(9) = {'PHIP'};
M_.param_names_long(9) = {'PHIP'};
M_.param_names(10) = {'PHIY'};
M_.param_names_tex(10) = {'PHIY'};
M_.param_names_long(10) = {'PHIY'};
M_.param_names(11) = {'OMEGA'};
M_.param_names_tex(11) = {'OMEGA'};
M_.param_names_long(11) = {'OMEGA'};
M_.param_names(12) = {'KTILDE'};
M_.param_names_tex(12) = {'KTILDE'};
M_.param_names_long(12) = {'KTILDE'};
M_.param_names(13) = {'J_ss'};
M_.param_names_tex(13) = {'J\_ss'};
M_.param_names_long(13) = {'J_ss'};
M_.param_names(14) = {'PP'};
M_.param_names_tex(14) = {'PP'};
M_.param_names_long(14) = {'PP'};
M_.param_names(15) = {'B'};
M_.param_names_tex(15) = {'B'};
M_.param_names_long(15) = {'B'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 17;
M_.param_nbr = 15;
M_.orig_endo_nbr = 17;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 17;
M_.eq_nbr = 17;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 5 22;
 0 6 23;
 0 7 0;
 0 8 0;
 1 9 0;
 2 10 0;
 0 11 0;
 3 12 0;
 0 13 24;
 0 14 0;
 0 15 0;
 0 16 25;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 4 21 0;]';
M_.nstatic = 9;
M_.nfwrd   = 4;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [12; 4; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'J' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , '11' ;
  12 , 'name' , 'A' ;
  13 , 'name' , 'dp' ;
  14 , 'name' , 'R' ;
  15 , 'name' , '15' ;
  16 , 'name' , '16' ;
  17 , 'name' , '17' ;
};
M_.mapping.Cu.eqidx = [1 2 3 15 16 ];
M_.mapping.Cc.eqidx = [4 5 6 15 16 ];
M_.mapping.Lu.eqidx = [2 9 10 11 ];
M_.mapping.Lc.eqidx = [4 5 9 10 11 ];
M_.mapping.R.eqidx = [1 4 6 8 14 ];
M_.mapping.bc.eqidx = [4 8 ];
M_.mapping.Hu.eqidx = [3 17 ];
M_.mapping.Hc.eqidx = [4 6 8 17 ];
M_.mapping.q.eqidx = [3 4 6 8 ];
M_.mapping.Wu.eqidx = [2 10 ];
M_.mapping.Wc.eqidx = [4 5 11 ];
M_.mapping.dp.eqidx = [1 4 6 8 13 14 ];
M_.mapping.Y.eqidx = [9 14 15 ];
M_.mapping.C.eqidx = [16 ];
M_.mapping.x.eqidx = [10 11 13 ];
M_.mapping.J.eqidx = [3 6 7 ];
M_.mapping.A.eqidx = [9 10 11 12 ];
M_.mapping.e.eqidx = [7 ];
M_.mapping.u.eqidx = [14 ];
M_.mapping.n_inf.eqidx = [13 ];
M_.mapping.e_prod.eqidx = [12 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 6 8 17 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(17, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(15, 1);
M_.endo_trends = struct('deflator', cell(17, 1), 'log_deflator', cell(17, 1), 'growth_factor', cell(17, 1), 'log_growth_factor', cell(17, 1));
M_.NNZDerivatives = [75; -1; -1; ];
M_.static_tmp_nbr = [13; 3; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.99;
BETA = M_.params(1);
M_.params(2) = 0.98;
T_BETA = M_.params(2);
M_.params(13) = 0.1;
J_ss = M_.params(13);
M_.params(6) = 1.2;
X = M_.params(6);
M_.params(12) = 0.0858;
KTILDE = M_.params(12);
M_.params(7) = 1.01;
ETA = M_.params(7);
M_.params(4) = 0.9;
m = M_.params(4);
M_.params(5) = 0.64;
GAMMA = M_.params(5);
M_.params(6) = 1.2;
X = M_.params(6);
THETA=0.75;
M_.params(8) = 0.8;
RHO = M_.params(8);
M_.params(9) = 0.5;
PHIP = M_.params(9);
M_.params(10) = 0.8;
PHIY = M_.params(10);
STDERR_AE=0.0029;
RHOG=0.8;
M_.params(14) = 0.95;
PP = M_.params(14);
M_.params(15) = 1;
B = M_.params(15);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(1) = 0;
oo_.steady_state(2) = 0;
oo_.steady_state(10) = 0;
oo_.steady_state(11) = 0;
oo_.steady_state(6) = 0;
oo_.steady_state(3) = 0;
oo_.steady_state(4) = 0;
oo_.steady_state(7) = 0;
oo_.steady_state(8) = 0;
oo_.steady_state(12) = 0;
oo_.steady_state(5) = 0.01;
oo_.steady_state(13) = 0;
oo_.steady_state(9) = 0;
oo_.steady_state(15) = 0;
oo_.steady_state(17) = 0;
oo_.steady_state(16) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (50)^2;
M_.Sigma_e(2, 2) = (2.8)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.Sigma_e(4, 4) = (0.05)^2;
options_.irf = 20;
options_.order = 1;
var_list_ = {'Y';'C';'dp';'Cu';'Cc';'Hu';'Hc';'q';'A';'R';'bc';'J'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('basic_IAC_LV1_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('basic_IAC_LV1_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
