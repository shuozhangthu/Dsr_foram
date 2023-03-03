set(0, 'DefaultAxesFontWeight', 'bold', ...
      'DefaultAxesFontSize', 10, ...
      'DefaultAxesFontAngle', 'normal', ... % Not sure the difference here
      'DefaultAxesFontWeight', 'bold', ... % Not sure the difference here
      'DefaultAxesTitleFontWeight', 'bold', ...
      'DefaultAxesTitleFontSizeMultiplier', 1) ;
set(0, 'DefaultLineLineWidth', 2);
set(0, 'DefaultAxesLineWidth', 2)

clear
% figure
% x=[2 1 10];
% y=[6 9 4];
% err=[3 2 1];
% errorbar(x,y,err,'o','linewidth',1.5)


load lorens
load tang
load tp
load carbonate_parameters
load carbonate_parameters_Cm

%
% Ksr_R=[
% 0.117447307
% 0.112529274
% 0.112997658
% 0.104215457
% 0.111709602
% 0.102810304];
% 
% omega_R=[
% 0.398730159
% 0.56920904
% 0.356016141
% 0.489937963
% 0.386369594
% 0.456719325
% ];

%
figure
hold on

%C. wuellerstorfi.
% scatter(omega_yu_n,ksr_yu_n,60,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
% scatter(omega_yu_a,ksr_yu_a,60,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
% scatter(omega_yu_i,ksr_yu_i,60,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
% scatter(omega_yu_p,ksr_yu_p,60,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
errorbar(omega_yu_n,ksr_yu_n,err_Dsr_n,'o','MarkerEdgeColor',[235,77,75]./255,'Color',[235,77,75]./255,'linewidth',1);
errorbar(omega_yu_a,ksr_yu_a,err_Dsr_a,'d','MarkerEdgeColor',[126,214,223]./255,'Color',[126,214,223]./255,'linewidth',1);
errorbar(omega_yu_i,ksr_yu_i,err_Dsr_i,'v','MarkerEdgeColor',[249,202,36]./255,'Color',[249,202,36]./255,'linewidth',1);
errorbar(omega_yu_p,ksr_yu_p,err_Dsr_p,'p','MarkerEdgeColor',[240,147,43]./255,'Color',[240,147,43]./255,'linewidth',1)

%C. mundulus
% scatter(omega_cm_A,DSr_cm_A,60,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);
errorbar(omega_cm_A,DSr_cm_A,err_Dsr_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'Color',[106,176,76]./255,'linewidth',1)

% scatter(omega_R,Ksr_R,60,'>','MarkerEdgeColor',C(9,:),'linewidth',1);
% scatter(omega_cm_I,DSr_cm_I,60,'>','MarkerEdgeColor',C(9,:),'linewidth',1);
% scatter(omega_cm_P,DSr_cm_P,60,'<','MarkerEdgeColor',C(10,:),'linewidth',1);

% scatter(S_1_tang+1,ksr_tang,60,'+','MarkerEdgeColor',[104,109,224]./255,'linewidth',1.5);
errorbar(S_1_tang+1,ksr_tang,err_Dsr_Tang,'<','MarkerSize',5,'MarkerEdgeColor',[149,175,192]./255,'Color',[149,175,192]./255,'linewidth',1);

scatter(Omega_lorens,Ksrca_lorens,60,'x','MarkerEdgeColor',[15,170,255]./255,'linewidth',1);
scatter(Omega_tp,ksr_tp,60,'+','MarkerEdgeColor',[104,109,224]./255,'linewidth',1);

xlabel('\Omega','FontWeight','bold');
ylabel('D_{Sr}','FontWeight','bold');
legend(['{\it{C.wuellerstorfi}}, -1 to 5 \circC',sprintf('\n'),'Norwegian Sea'],'Atlantic Ocean','Indian Ocean','Pacific Ocean',['{\it{C.mundulus}}, 1 to 5 \circC',sprintf('\n'), 'Atlantic Ocean'],['Inorganic calcite, 25\circC',sprintf('\n'), 'Tang et al. (2008)'],'Lorens (1981)','T&P (1996)','location','southeast','FontName','Times New Roman','fontsize',8.5)
box on
ax = gca;
set(gca,'xscale','log')

xlim([0.5 100])
ylim([0 0.2])
ax.LineWidth = 1;


text(2.3,0.168,'Increased \Omega by elevated pH ?','fontweight','bold','fontsize',9,'FontName','Times New Roman')
annotation( 'arrow', 'X', [0.34 0.60], 'Y', [0.76 0.76],'LineWidth',1)
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',11,'Fontweight','bold')
