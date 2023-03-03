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
set(gcf,'Position',[100, 0, 700,600])

%%
run_chen_depth_n;
hold on
plot(xomega_sw,Kp,'Color',[235,77,75]./255,'linewidth',1.5)
xlabel('\Omega_{sw}','fontsize',18,'interpreter','tex')
ylabel('D_{Sr}','fontsize',18,'interpreter','tex')


box on
ax = gca;
set(gca,'yscale','log')
box on
ax = gca;
ax.LineWidth = 1;

%%
run_chen_depth_a;


hold on
plot(xomega_sw,Kp,'Color',[126,214,223]./255,'linewidth',1.5)

%%
run_chen_depth_i;


hold on
plot(xomega_sw,Kp,'Color',[249,202,36]./255,'linewidth',1.5)

%%
run_chen_depth_p;
load carbonate_parameters;

hold on
plot(xomega_sw,Kp,'Color',[240,147,43]./255,'linewidth',1.5)
%%
run_Cm_A;
% load carbonate_parameters_Cm 
hold on
xomega_sw=xomega_sw(1:30);
Kp=Kp(1:30);
plot(xomega_sw,Kp,'color',[106,176,76]./255,'linewidth',1.5)

load carbonate_parameters;


% scatter(omega_yu_n,ksr_yu_n,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(omega_yu_a,ksr_yu_a,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(omega_yu_i,ksr_yu_i,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(omega_yu_p,ksr_yu_p,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);

errorbar(omega_yu_n,ksr_yu_n,err_Dsr_n,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(omega_yu_a,ksr_yu_a,err_Dsr_a,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(omega_yu_i,ksr_yu_i,err_Dsr_i,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(omega_yu_p,ksr_yu_p,err_Dsr_p,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)


xlim([0.6 2.4])
ylim([0.12 0.18])
set(gca,'YTick',0.12:0.01:0.18);

%%
load carbonate_parameters_Cm 
% scatter(omega_cm_A,DSr_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);
errorbar(omega_cm_A,DSr_cm_A,err_Dsr_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

legend(['{\it{C.wuellerstorfi}}',sprintf('\n'),'Norwegian Sea'],'Atlantic Ocean','Indian Ocean','Pacific Ocean',['{\it{C.mundulus}}',sprintf('\n'), 'Atlantic Ocean'],'location','southeast','FontName','Times New Roman','fontsize',10)

set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',11,'Fontweight','bold')

% set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',14,'Fontweight','bold','LineWidth', 2)