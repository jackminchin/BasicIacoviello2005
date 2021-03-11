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
M_.fname = 'nk';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('nk.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'u'};
M_.exo_names_tex(1) = {'u'};
M_.exo_names_long(1) = {'u'};
M_.endo_names = cell(8,1);
M_.endo_names_tex = cell(8,1);
M_.endo_names_long = cell(8,1);
M_.endo_names(1) = {'Y'};
M_.endo_names_tex(1) = {'Y'};
M_.endo_names_long(1) = {'Y'};
M_.endo_names(2) = {'X'};
M_.endo_names_tex(2) = {'X'};
M_.endo_names_long(2) = {'X'};
M_.endo_names(3) = {'C'};
M_.endo_names_tex(3) = {'C'};
M_.endo_names_long(3) = {'C'};
M_.endo_names(4) = {'l'};
M_.endo_names_tex(4) = {'l'};
M_.endo_names_long(4) = {'l'};
M_.endo_names(5) = {'w'};
M_.endo_names_tex(5) = {'w'};
M_.endo_names_long(5) = {'w'};
M_.endo_names(6) = {'r'};
M_.endo_names_tex(6) = {'r'};
M_.endo_names_long(6) = {'r'};
M_.endo_names(7) = {'dp'};
M_.endo_names_tex(7) = {'dp'};
M_.endo_names_long(7) = {'dp'};
M_.endo_names(8) = {'AUX_ENDO_LEAD_35'};
M_.endo_names_tex(8) = {'AUX\_ENDO\_LEAD\_35'};
M_.endo_names_long(8) = {'AUX_ENDO_LEAD_35'};
M_.endo_partitions = struct();
M_.param_names = cell(9,1);
M_.param_names_tex = cell(9,1);
M_.param_names_long = cell(9,1);
M_.param_names(1) = {'BETA'};
M_.param_names_tex(1) = {'BETA'};
M_.param_names_long(1) = {'BETA'};
M_.param_names(2) = {'ETA'};
M_.param_names_tex(2) = {'ETA'};
M_.param_names_long(2) = {'ETA'};
M_.param_names(3) = {'XSS'};
M_.param_names_tex(3) = {'XSS'};
M_.param_names_long(3) = {'XSS'};
M_.param_names(4) = {'KTILDE'};
M_.param_names_tex(4) = {'KTILDE'};
M_.param_names_long(4) = {'KTILDE'};
M_.param_names(5) = {'RHO'};
M_.param_names_tex(5) = {'RHO'};
M_.param_names_long(5) = {'RHO'};
M_.param_names(6) = {'PHIP'};
M_.param_names_tex(6) = {'PHIP'};
M_.param_names_long(6) = {'PHIP'};
M_.param_names(7) = {'PHIY'};
M_.param_names_tex(7) = {'PHIY'};
M_.param_names_long(7) = {'PHIY'};
M_.param_names(8) = {'h'};
M_.param_names_tex(8) = {'h'};
M_.param_names_long(8) = {'h'};
M_.param_names(9) = {'GAMMA'};
M_.param_names_tex(9) = {'GAMMA'};
M_.param_names_long(9) = {'GAMMA'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 9;
M_.orig_endo_nbr = 7;
M_.aux_vars(1).endo_index = 8;
M_.aux_vars(1).type = 0;
M_.aux_vars(1).orig_expr = 'h*BETA/exp(C(1))';
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 7;
M_.eq_nbr = 8;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 2;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 2;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 0;
 0 4 0;
 1 5 11;
 0 6 0;
 0 7 0;
 2 8 0;
 0 9 12;
 0 10 13;]';
M_.nstatic = 4;
M_.nfwrd   = 2;
M_.npred   = 1;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 2;
M_.ndynamic   = 4;
M_.dynamic_tmp_nbr = [3; 1; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , 'w' ;
  3 , 'name' , 'dp' ;
  4 , 'name' , 'r' ;
  5 , 'name' , '5' ;
  6 , 'name' , 'Y' ;
  7 , 'name' , '7' ;
};
M_.mapping.Y.eqidx = [4 5 6 7 ];
M_.mapping.X.eqidx = [3 5 ];
M_.mapping.C.eqidx = [1 2 7 ];
M_.mapping.l.eqidx = [2 5 6 ];
M_.mapping.w.eqidx = [2 5 ];
M_.mapping.r.eqidx = [1 4 ];
M_.mapping.dp.eqidx = [1 3 4 ];
M_.mapping.u.eqidx = [4 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [3 6 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(9, 1);
M_.endo_trends = struct('deflator', cell(8, 1), 'log_deflator', cell(8, 1), 'growth_factor', cell(8, 1), 'log_growth_factor', cell(8, 1));
M_.NNZDerivatives = [27; -1; -1; ];
M_.static_tmp_nbr = [1; 2; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.98;
BETA = M_.params(1);
M_.params(2) = 1.01;
ETA = M_.params(2);
M_.params(3) = 1.2;
XSS = M_.params(3);
M_.params(4) = 0.0858;
KTILDE = M_.params(4);
M_.params(5) = 0.8;
RHO = M_.params(5);
M_.params(6) = 0.5;
PHIP = M_.params(6);
M_.params(7) = 0;
PHIY = M_.params(7);
STDERR_AE = 0.0028 ;
M_.params(8) = 0.1;
h = M_.params(8);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(6) = 0.01;
oo_.steady_state(1) = 0;
oo_.steady_state(2) = 0;
oo_.steady_state(3) = 0;
oo_.steady_state(4) = 0;
oo_.steady_state(5) = 0;
oo_.steady_state(7) = 0;
oo_.steady_state(8)=M_.params(8)*M_.params(1)/exp(oo_.steady_state(3));
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
M_.Sigma_e(1, 1) = (0.0028)^2;
options_.irf = 20;
options_.nograph = true;
options_.order = 1;
var_list_ = {'Y';'dp';'X';'r';'C'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('nk_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('nk_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('nk_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('nk_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('nk_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('nk_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('nk_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
