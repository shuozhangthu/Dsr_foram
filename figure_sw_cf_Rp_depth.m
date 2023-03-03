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
subplot(2,3,1)
hold on
xlabel('Depth (m)');
ylabel('pH_{sw}');
box on
ax = gca;
ax.LineWidth = 1.5;
plot(xdepth,xpH_sw,'color',[235,77,75]./255);
axis([1000,5000,-inf,inf])
ylim([7.7 8.2])
title(['(a)'],'Fontsize',14);
axis square

subplot(2,3,2)
hold on
xlabel('Depth (m)');
ylabel('DIC_{sw} (\mumol/kg)');
box on
ax = gca;
ax.LineWidth = 1.5;
% plot(xdepth,xDIC_sw*1000000,'color',C(4,:));
plot(xdepth,xDIC_sw*1000000,'color',[235,77,75]./255);
axis([1000,5000,-inf,inf])
ylim([2050 2350])
title(['(b)'],'Fontsize',14);
axis square

subplot(2,3,3)
hold on
xlabel('Depth (m)');
ylabel('\Omega_{sw}');
box on
ax = gca;
ax.LineWidth = 1.5;
% plot(xdepth,xomega_sw,'color',C(4,:),'linewidth',2)
plot(xdepth,xomega_sw,'color',[235,77,75]./255,'linewidth',1.5)
axis([1000,5000,-inf,inf])
ylim([0.5 2.5])
title(['(c)'],'Fontsize',14);
axis square

subplot(2,3,4);
hold on
% plot(xdepth,xpH,'color',C(4,:),'linewidth',2)
plot(xdepth,xpH,'color',[235,77,75]./255,'linewidth',1.5)
ylabel('pH_{cf}')
xlabel('Depth (m)');
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,-inf,inf])
ylim([9 9.4])
title(['(d)'],'Fontsize',14);
axis square

ax(3)=subplot(2,3,5);
hold on
% plot(xdepth,xDIC*1000000,'color',C(4,:),'linewidth',2)
plot(xdepth,xDIC*1000000,'color',[235,77,75]./255,'linewidth',1.5)
ylabel('DIC_{cf} (\mumol/kg)')
xlabel('Depth (m)');
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,-inf,inf])
ylim([1800 2200])
title(['(e)'],'Fontsize',14);
axis square

ax(3)=subplot(2,3,6);
hold on
% plot(xdepth,xomega,'color',C(4,:),'linewidth',2)
plot(xdepth,xomega,'color',[235,77,75]./255,'linewidth',1.5)

ylabel('\Omega_{cf}')
xlabel('Depth (m)');
box on
ax = gca;
ax.LineWidth = 1.5;
axis([1000,5000,-inf,inf])
ylim([8 20])
title(['(f)'],'Fontsize',14);
axis square

%%
run_chen_depth_a;
subplot(2,3,1)
hold on
plot(xdepth,xpH_sw,'color',[126,214,223]./255);

subplot(2,3,2)
hold on
plot(xdepth,xDIC_sw*1000000,'color',[126,214,223]./255);

subplot(2,3,3)
plot(xdepth,xomega_sw,'color',[126,214,223]./255,'linewidth',1.5)

subplot(2,3,4);
hold on
plot(xdepth,xpH,'color',[126,214,223]./255,'linewidth',1.5)

ax(3)=subplot(2,3,5);
hold on
plot(xdepth,xDIC*1000000,'color',[126,214,223]./255,'linewidth',1.5)

ax(3)=subplot(2,3,6);
hold on
plot(xdepth,xomega,'color',[126,214,223]./255,'linewidth',1.5)

%%
run_chen_depth_i;

subplot(2,3,1)
hold on
plot(xdepth,xpH_sw,'color',[249,202,36]./255);

subplot(2,3,2)
hold on
plot(xdepth,xDIC_sw*1000000,'color',[249,202,36]./255);

subplot(2,3,3)
plot(xdepth,xomega_sw,'color',[249,202,36]./255,'linewidth',1.5)

subplot(2,3,4);
hold on
plot(xdepth,xpH,'color',[249,202,36]./255,'linewidth',1.5)

ax(3)=subplot(2,3,5);
hold on
plot(xdepth,xDIC*1000000,'color',[249,202,36]./255,'linewidth',1.5)

ax(3)=subplot(2,3,6);
hold on
plot(xdepth,xomega,'color',[249,202,36]./255,'linewidth',1.5)
%%


run_Cm_A;
subplot(2,3,1)
hold on
plot(xdepth,xpH_sw,'color',[106,176,76]./255,'linewidth',1.5);

subplot(2,3,2)
hold on
plot(xdepth,xDIC_sw*1000000,'color',[106,176,76]./255,'linewidth',1.5);

subplot(2,3,3)
plot(xdepth,xomega_sw,'color',[106,176,76]./255,'linewidth',1.5)

subplot(2,3,4);
hold on
 plot(xdepth,xpH,'color',[106,176,76]./255,'linewidth',1.5)

ax(3)=subplot(2,3,5);
hold on
plot(xdepth,xDIC*1000000,'color',[106,176,76]./255,'linewidth',1.5)

ax(3)=subplot(2,3,6);
hold on
plot(xdepth,xomega,'color',[106,176,76]./255,'linewidth',1.5)

%%
run_chen_depth_p;
load carbonate_parameters;

subplot(2,3,1)
hold on
plot(xdepth,xpH_sw,'color',[240,147,43]./255);
scatter(WD_yu_n,pH_yu_n,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1)
scatter(WD_yu_a,pH_yu_a,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1)
scatter(WD_yu_i,pH_yu_i,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1)
scatter(WD_yu_p,pH_yu_p,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1)

subplot(2,3,2)
hold on
plot(xdepth,xDIC_sw*1000000,'color',[240,147,43]./255);
scatter(WD_yu_n,DIC_yu_n,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1);
scatter(WD_yu_a,DIC_yu_a,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1);
scatter(WD_yu_i,DIC_yu_i,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1);
scatter(WD_yu_p,DIC_yu_p,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1);
 
subplot(2,3,3)
hold on
plot(xdepth,xomega_sw,'color',[240,147,43]./255,'linewidth',1.5)

scatter(WD_yu_n,omega_yu_n,'o','MarkerEdgeColor',[235,77,75]./255,'linewidth',1)
scatter(WD_yu_a,omega_yu_a,'d','MarkerEdgeColor',[126,214,223]./255,'linewidth',1)
scatter(WD_yu_i,omega_yu_i,'v','MarkerEdgeColor',[249,202,36]./255,'linewidth',1)
scatter(WD_yu_p,omega_yu_p,'p','MarkerEdgeColor',[240,147,43]./255,'linewidth',1)

subplot(2,3,4);
hold on
plot(xdepth,xpH,'color',[240,147,43]./255,'linewidth',1.5)

ax(3)=subplot(2,3,5);
hold on
plot(xdepth,xDIC*1000000,'color',[240,147,43]./255,'linewidth',1.5)

ax(3)=subplot(2,3,6);
hold on
plot(xdepth,xomega,'color',[240,147,43]./255,'linewidth',1.5)


load carbonate_parameters_Cm 
subplot(2,3,1)
hold on
scatter(WD_A,pH_A,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1)

subplot(2,3,2)
hold on
scatter(WD_A,DIC_A,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1);
 
subplot(2,3,3)
hold on
scatter(WD_A,omega_cm_A,'s','MarkerEdgeColor',[106,176,76]./255,'linewidth',1)
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',12,'Fontweight','bold')

% set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',14,'Fontweight','bold','LineWidth', 2)


