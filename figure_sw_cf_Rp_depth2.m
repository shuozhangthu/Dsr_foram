clear all
set(0, 'DefaultAxesFontWeight', 'bold', ...
    'DefaultAxesFontSize', 12, ...
    'DefaultAxesFontAngle', 'normal', ... % Not sure the difference here
    'DefaultAxesFontWeight', 'bold', ... % Not sure the difference here
    'DefaultAxesTitleFontWeight', 'bold', ...
    'DefaultAxesTitleFontSizeMultiplier', 1) ;
set(0, 'DefaultLineLineWidth', 2);
set(0, 'DefaultAxesLineWidth', 2);

figure
set(gcf,'Position',[0, 0, 1100, 1000])

%%
run_chen_depth_n;
ax(3)=subplot(2,3,1);
hold on
plot(xdepth,Rnet1,'color',[235,77,75]./255','linewidth',1.5)
ylabel('R_p (mol/m^2/s)')
xlabel('Depth (m)')
set(gca,'yscale','log')
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,-inf,inf])
ylim([0.3e-6 2e-6])
title(['(g)'],'Fontsize',14);
axis square

ax(3)=subplot(2,3,2);
hold on
plot(xdepth,Kp,'color',[235,77,75]./255','linewidth',1.5)
xlabel('Depth (m)')
ylabel('D_{Sr}')
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,-inf,inf])
ylim([0.12 0.18])
title(['(h)'],'Fontsize',14);
axis square


ax(3)=subplot(2,3,3);
hold on
plot(xdepth,xSr./xCa,'color',[235,77,75]./255','linewidth',1.5)
xlabel('Depth (m)')
ylabel('Sr/Ca_{cf}')
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,8.1e-3,8.6e-3])
ylim([8.5e-3 8.8e-3])
title(['(i)'],'Fontsize',14);
axis square
%%
run_chen_depth_a;

ax(3)=subplot(2,3,1);
hold on
plot(xdepth,Rnet1,'color',[126,214,223]./255,'linewidth',1.5)

ax(3)=subplot(2,3,2);
hold on
plot(xdepth,Kp,'color',[126,214,223]./255,'linewidth',1.5)

ax(3)=subplot(2,3,3);
hold on
plot(xdepth,xSr./xCa,'color',[126,214,223]./255,'linewidth',1.5)
%%
run_chen_depth_i;


ax(3)=subplot(2,3,1);
hold on
plot(xdepth,Rnet1,'color',[249,202,36]./255,'linewidth',1.5)

ax(3)=subplot(2,3,2);
hold on
plot(xdepth,Kp,'color',[249,202,36]./255,'linewidth',1.5)

ax(3)=subplot(2,3,3);
hold on
plot(xdepth,xSr./xCa,'color',[249,202,36]./255,'linewidth',1.5)
%%


run_chen_depth_p;
load carbonate_parameters;

ax(3)=subplot(2,3,1);
hold on
plot(xdepth,Rnet1,'color',[240,147,43]./255,'linewidth',1.5)
% legend('Norwegian Sea','Atlantic Ocean','Indian Ocean','Pacific Ocean','location','southwest','fontsize',10);
legend(['{\it{C.wuellerstorfi}}',sprintf('\n'),'Norwegian Sea'],'Atlantic Ocean','Indian Ocean','Pacific Ocean',['{\it{C.mundulus}}',sprintf('\n'), 'Atlantic Ocean'],'location','southeast','FontName','Times New Roman','fontsize',8.5)

ax(3)=subplot(2,3,2);
hold on
plot(xdepth,Kp,'color',[240,147,43]./255,'linewidth',1.5)
scatter(WD_yu_n,ksr_yu_n,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1)
% scatter(WD_yu_n,ksr_yu_n,'o','MarkerEdgeColor',[106,176,76]./255,'linewidth',1)
% 
% scatter(WD_yu_a,ksr_yu_a,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1)
% scatter(WD_yu_i,ksr_yu_i,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1)
% scatter(WD_yu_p,ksr_yu_p,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1)
load carbonate_parameters
errorbar(WD_yu_n,ksr_yu_n,err_Dsr_n,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(WD_yu_a,ksr_yu_a,err_Dsr_a,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(WD_yu_i,ksr_yu_i,err_Dsr_i,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(WD_yu_p,ksr_yu_p,err_Dsr_p,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)



ax(3)=subplot(2,3,3);
hold on
plot(xdepth,xSr./xCa,'color',[240,147,43]./255,'linewidth',1.5)
xx = 1000:1000:5000;
yy = 0.00854+zeros(5,1);
plot(xx,yy,'--','color','k','linewidth',1)
text(2000,0.00855,' seawater','FontName','Times New Roman','fontweight','bold','fontsize',10)


run_Cm_A;
subplot(2,3,1)
hold on
plot(xdepth,Rnet1,'color',[106,176,76]./255,'linewidth',1.5);


subplot(2,3,2)
hold on
plot(xdepth,Kp,'color',[106,176,76]./255,'linewidth',1.5);

subplot(2,3,3)
plot(xdepth,xSr./xCa,'color',[106,176,76]./255,'linewidth',1.5)

subplot(2,3,2)
hold on
load carbonate_parameters_Cm 
scatter(WD_A,DSr_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1)
% scatter(WD_A,DSr_cm_A,'s','MarkerEdgeColor',[235,77,75]./255,'linewidth',1)
load carbonate_parameters

errorbar(WD_A,DSr_cm_A,err_Dsr_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

% set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',14,'Fontweight','bold','LineWidth', 2)
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',12,'Fontweight','bold')
