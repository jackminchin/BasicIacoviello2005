dynare basic_IAC_LV1.mod
load('basic_IAC_LV1_results.mat', 'oo_')
irf1 = oo_.irfs;
save output/irf1


dynare basic_IAC_LV09.mod
load('basic_IAC_LV09_results.mat', 'oo_')
irf2 = oo_.irfs;
save output/irf2


load output/irf1;
load output/irf2;


ending_cell={'_e', '_n_inf', '_u', '_e_prod'};

for ii=1:length(ending_cell)
    HOR=1:options_.irf;
    var={'Y', 'dp', 'Cu', 'Cc', 'q', 'C', 'Hu', 'Hc', 'A', 'R', 'bc', 'J'};
    figure('Position', [120, 120, 900, 1000]);
    for jj=1:length(var)
        subplot(3,4,jj)
        eval(['irf1.' var{1,jj},ending_cell{1,ii}]);
        eval(['irf2.' var{1,jj},ending_cell{1,ii}]);
        load output/irf1
        load output/irf2
        hold on
        plot(HOR,[eval(['irf1.' var{1,jj},ending_cell{1,ii}])],'-k',HOR,[eval(['irf2.' var{1,jj},ending_cell{1,ii}])],'--r','LineWidth',2)
        legend('B=1','B=0.5')
        title([var{1,jj}], [ending_cell{1,ii}])
    end
    saveas(gcf,['../figs/' sprintf( '%s', ending_cell{1, ii}) '.png'])
end

clear;