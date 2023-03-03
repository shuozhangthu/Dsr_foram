clear
set(0, 'DefaultAxesFontWeight', 'bold', ...
      'DefaultAxesFontSize', 10, ...
      'DefaultAxesFontAngle', 'normal', ... % Not sure the difference here
      'DefaultAxesFontWeight', 'bold', ... % Not sure the difference here
      'DefaultAxesTitleFontWeight', 'bold', ...
      'DefaultAxesTitleFontSizeMultiplier', 1) ;
set(0, 'DefaultLineLineWidth', 2);
set(0, 'DefaultAxesLineWidth', 2)

clear

% load test_data
load s1data
load carbonate_parameters
err_Dsr_n0=zeros(57,1)*nan;
err_Dsr_i0=zeros(57,1)*nan;
err_Dsr_a0=zeros(57,1)*nan;
err_Dsr_p0=zeros(57,1)*nan;
err_Dsr_cm_A0=zeros(57,1)*nan;
for i=1:length(err_Dsr_n)
    err_Dsr_n0(i)=err_Dsr_n(i);
end
for i=1:length(err_Dsr_i)
    err_Dsr_i0(i)=err_Dsr_i(i);
end
for i=1:length(err_Dsr_a)
    err_Dsr_a0(i)=err_Dsr_a(i);
end
for i=1:length(err_Dsr_p)
    err_Dsr_p0(i)=err_Dsr_p(i);
end
for i=1:length(err_Dsr_cm_A)
    err_Dsr_cm_A0(i)=err_Dsr_cm_A(i);
end
%
figure
subplot(2,4,1)

hold on
% scatter(DICsw_A_cw,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(DICsw_I_cw,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(DICsw_N_cw,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(DICsw_P_cw,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(DICsw_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(DICsw_N_cw,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(DICsw_A_cw,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(DICsw_I_cw,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(DICsw_P_cw,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(DICsw_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)


xlabel('[DIC]_{sw} (mol/L)','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')

ax.LineWidth = 1.5;
title(['(a)'],'Fontsize',14);

xlim([2.0e-3 2.4e-3])
%  set(gca,'Xtick',[10^(-1)  10  10^3  10^5])
%%
subplot(2,4,2)

hold on
% scatter(HCO3sw_A_cw,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(HCO3sw_I_cw,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(HCO3sw_N_cw,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(HCO3sw_P_cw,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(HCO3sw_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(HCO3sw_N_cw,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(HCO3sw_A_cw,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(HCO3sw_I_cw,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(HCO3sw_P_cw,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(HCO3sw_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

xlabel('[HCO_{3}^{-}]_{sw} (mol/L)','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')

ax.LineWidth = 1.5;
title(['(b)'],'Fontsize',14);
xlim([1.9e-3 2.3e-3])
%  set(gca,'Xtick',[10^(-1)  10  10^3  10^5])
%%
subplot(2,4,3)

hold on

% scatter(CO2sw_A_cw,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(CO2sw_I_cw,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(CO2sw_N_cw,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(CO2sw_P_cw,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(CO2sw_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(CO2sw_N_cw,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(CO2sw_A_cw,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(CO2sw_I_cw,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(CO2sw_P_cw,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(CO2sw_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

xlabel('[CO_{2}]_{sw} (mol/L)','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')
ax.LineWidth = 1.5;
title(['(c)'],'Fontsize',14);
xlim([1.5e-5 3.5e-5])
%  set(gca,'Xtick',[10^(-1)  10  10^3  10^5])
%%

subplot(2,4,4)

hold on

% scatter(CO3sw_A_cw,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(CO3sw_I_cw,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(CO3sw_N_cw,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(CO3sw_P_cw,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(CO3sw_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(CO3sw_N_cw,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(CO3sw_A_cw,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(CO3sw_I_cw,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(CO3sw_P_cw,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(CO3sw_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

xlabel('[CO_{3}^{2-}]_{sw} (mol/L)','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')
ax.LineWidth = 1.5;
title(['(d)'],'Fontsize',14);
xlim([0.6e-4 1.4e-4])
% set(gca,'Xtick',[0.7e-4  0.8e-4 0.9e-4 1.0e-4 1.1e-4 1.2e-4])
%%
subplot(2,4,5)

hold on
% scatter(DICsw_A_cw./Ksp_A,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(DICsw_I_cw./Ksp_I,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(DICsw_N_cw./Ksp_N,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(DICsw_P_cw./Ksp_P,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(DICsw_A_cm./Ksp_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(DICsw_N_cw./Ksp_N,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(DICsw_A_cw./Ksp_A,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(DICsw_I_cw./Ksp_I,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(DICsw_P_cw./Ksp_P,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(DICsw_A_cm./Ksp_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

%
xlabel('[DIC]_{sw}/K_{sp} ((mol/L)^{-1})','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')
ax.LineWidth = 1.5;
title(['(e)'],'Fontsize',14);

xlim([1000 5000])
% set(gca,'Xtick',[0.7e-4  0.8e-4 0.9e-4 1.0e-4 1.1e-4 1.2e-4])
%%
subplot(2,4,6)

hold on

% scatter(HCO3sw_A_cw./Ksp_A,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(HCO3sw_I_cw./Ksp_I,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(HCO3sw_N_cw./Ksp_N,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(HCO3sw_P_cw./Ksp_P,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(HCO3sw_A_cm./Ksp_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(HCO3sw_N_cw./Ksp_N,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(HCO3sw_A_cw./Ksp_A,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(HCO3sw_I_cw./Ksp_I,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(HCO3sw_P_cw./Ksp_P,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(HCO3sw_A_cm./Ksp_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)


xlabel('[HCO_{3}^{-}]_{sw}/K_{sp} ((mol/L)^{-1})','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')
ax.LineWidth = 1.5;
title(['(f)'],'Fontsize',14);
xlim([1000 5000])

%%
subplot(2,4,7)

hold on

% scatter(CO2sw_A_cw./Ksp_A,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(CO2sw_I_cw./Ksp_I,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(CO2sw_N_cw./Ksp_N,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(CO2sw_P_cw./Ksp_P,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(CO2sw_A_cm./Ksp_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(CO2sw_N_cw./Ksp_N,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(CO2sw_A_cw./Ksp_A,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(CO2sw_I_cw./Ksp_I,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(CO2sw_P_cw./Ksp_P,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(CO2sw_A_cm./Ksp_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

xlabel('[CO_{2}]_{sw}/K_{sp} ((mol/L)^{-1})','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')

ax.LineWidth = 1.5;
title(['(g)'],'Fontsize',14);
xlim([10 60])
% set(gca,'Xtick',[0.7e-4  0.8e-4 0.9e-4 1.0e-4 1.1e-4 1.2e-4])
%%
subplot(2,4,8)

hold on
% scatter(CO3sw_A_cw./Ksp_A,ksr_A,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(CO3sw_I_cw./Ksp_I,ksr_I,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(CO3sw_N_cw./Ksp_N,ksr_N,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(CO3sw_P_cw./Ksp_P,ksr_P,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
% scatter(CO3sw_A_cm./Ksp_A_cm,ksr_A_cm,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);

errorbar(CO3sw_N_cw./Ksp_N,ksr_N,err_Dsr_n0,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(CO3sw_A_cw./Ksp_A,ksr_A,err_Dsr_a0,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(CO3sw_I_cw./Ksp_I,ksr_I,err_Dsr_i0,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(CO3sw_P_cw./Ksp_P,ksr_P,err_Dsr_p0,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)
errorbar(CO3sw_A_cm./Ksp_A_cm,ksr_A_cm,err_Dsr_cm_A0,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

xlabel('[CO_{3}^{2-}]_{sw}/K_{sp} ((mol/L)^{-1})','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
box on
ax = gca;
% set(gca,'xscale','log')

ax.LineWidth = 1.5;
title(['(h)'],'Fontsize',14);
% legend('Atlantic Ocean','Indian Ocean','Norwegian Sea','Pacific Ocean','location','southeast')
legend(['{\it{C.wuellerstorfi}}',sprintf('\n'),'Norwegian Sea'],'Atlantic Ocean','Indian Ocean','Pacific Ocean',['{\it{C.mundulus}}',sprintf('\n'), 'Atlantic Ocean'],'location','southeast','FontName','Times New Roman','fontsize',8.5)

xlim([50 250])
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',10.5,'Fontweight','bold')
% set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',12,'Fontweight','bold')

% set(gca,'Xtick',[0.7e-4  0.8e-4 0.9e-4 1.0e-4 1.1e-4 1.2e-4])


