clear
set(0, 'DefaultAxesFontWeight', 'bold', ...
    'DefaultAxesFontSize', 14, ...
    'DefaultAxesFontAngle', 'normal', ... % Not sure the difference here
    'DefaultAxesFontWeight', 'bold', ... % Not sure the difference here
    'DefaultAxesTitleFontWeight', 'bold', ...
    'DefaultAxesTitleFontSizeMultiplier', 1) ;
set(0, 'DefaultLineLineWidth', 1.5);
set(0, 'DefaultAxesLineWidth', 1.5)
set(0, 'DefaultLineMarkerSize', 6)
%P ocean

x=[1.70E-06
1.75E-06
1.90E-06
2.80E-06
5.50E-06
1.00E-05
4.50E-05
9.00E-05
];
y1=[7.00E-07
8.00E-07
1.00E-06
2.00E-06
5.00E-06
1.00E-05
5.00E-05
1.00E-04
];
%3000m'
y2=[9.75
9.6
9.45
9.26
9.175
9.15
9.1244
9.13
];

figure
hold on
rectangle('position',[2.8e-6 1.1e-7 7.2e-6 1e-3],'FaceColor',[0.9 0.9 0.9])

hold on
colororder([0,0,0;178,34,34]./255);

yyaxis left

plot(x,y1,'linewidth',1.5)
ylabel('P_{cell} (m/s)')
set(gca,'yscale','log')
ylim([1e-7 1e-4])
hold on
plot(4.70E-06,4.0E-06,'ko') 
hold on 

yyaxis right
hold on
plot(x,y2,'color',[178,34,34]./255,'linewidth',1.5)
ylabel('pH_{cf}')
xlabel('F_{ALK} (mol/m^{2}/s)')
box on
ax = gca;
ax.LineWidth = 1.5;
set(gca,'xscale','log')
set(gca,'yscale','log')
ylim([9.1 9.8])
set(gca,'ycolor',[178,34,34]./255);
text(4.0e-6,9.7,'R^2 > 0.70','FontName','Times New Roman','fontweight','bold','fontsize',8)
% hold on
annotation( 'arrow', 'X', [3.1e-6 3.2e-6], 'Y', [9.7 9.7],'LineWidth',1)

hold on 
text(4.6e-6,9.44,'R^2_{max} = 0.81','FontName','Times New Roman','fontweight','bold','fontsize',8)
text(4.6e-6,9.22,'R^2_{max} = 0.81','FontName','Times New Roman','fontweight','bold','fontsize',8)

hold on
plot(4.70E-06,9.195,'o','color',[178,34,34]./255) 
hold on 
 set(findobj(gcf,'type','axes'),'FontName','Times New Roman','Fontweight','bold')

