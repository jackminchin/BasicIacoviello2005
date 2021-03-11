dynare basic_IAC_LV1.mod
load('basic_IAC_LV1_results.mat', 'oo_')
irf1 = oo_.irfs;
save output/irf1


dynare nk.mod
load('nk_results.mat', 'oo_')
irf2 = oo_.irfs;
save output/irf3


load output/irf1;
load output/irf3;


ending_cell={'_u'};

for ii=1:length(ending_cell)
    HOR=1:options_.irf;
    var={'Y', 'dp', 'C'};
    figure('Position', [120, 120, 900, 1000]);
    for jj=1:length(var)
        subplot(3,4,jj)
        eval(['irf1.' var{1,jj},ending_cell{1,ii}]);
        eval(['irf2.' var{1,jj},ending_cell{1,ii}]);
        load output/irf1
        load output/irf3
        hold on
        plot(HOR,[eval(['irf1.' var{1,jj},ending_cell{1,ii}])],'-k',HOR,[eval(['irf2.' var{1,jj},ending_cell{1,ii}])],'--r','LineWidth',2)
        legend('IAC','NK')
        title([var{1,jj}], [ending_cell{1,ii}])
    end
    saveas(gcf,['../figs/test-' sprintf( '%s', ending_cell{1, ii}) '.png'])
end

clear;