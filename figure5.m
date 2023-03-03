clear
omega=4;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
figure 
set(gcf,'Position',[100, 0, 580,500])

plot(pH,DIC,'color','k','linewidth',1)
hold on
%%
omega=5;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;

hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=6;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=3;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=2;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)

ylim([1800 3000])


%%


%15
ph1=[7.8	7.9	8	8.04];
dic1=[1800	2000	2600 3000];
%15.5
ph2=[8.03 8.1	8.15];
dic2=[1800 2300	3000];
%16
ph3=[8.18	8.2 8.25];
dic3=[1800	2000 3000];
%14.5
ph4=[7.5	7.6	7.7	7.8 7.88];
dic4=[2000	2100	2300	2600 3000];


plot(ph1,dic1,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph2,dic2,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph3,dic3,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph4,dic4,'--','color',[235,77,75]./255,'linewidth',1)

hold on 
ph11=8.2;
dic11=2000;

ph22=8.05;
dic22=2100;

ph33=7.73;
dic33=2360;

scatter(ph11,dic11,'MarkerEdgeColor',[126,214,223]./255,'linewidth',1.5,'sizedata',50)
hold on
scatter(ph22,dic22,'MarkerEdgeColor',[106,176,76]./255,'linewidth',1.5,'sizedata',50)
hold on
scatter(ph33,dic33,'MarkerEdgeColor',[104,109,224]./255,'linewidth',1.5,'sizedata',50)


title(['(a)'],'Fontsize',14,'Fontweight','bold');

xlabel('pH_{sw}')
ylabel('DIC_{sw} (\mumol/kg)')
box on
ax = gca;
ax.LineWidth = 1.5;
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',11,'Fontweight','bold')

%%
%图2
clear
omega=4;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
figure 
set(gcf,'Position',[100, 0, 580,500])

plot(pH,DIC,'color','k','linewidth',1)
hold on
%%
omega=5;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;

hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=6;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=3;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)
%%
omega=2;
depth=0;
Ca = 10.3e-3;
TC=18;
S=35;
TK=TC+273.15;
P=1;
phflag = 0;     % 0: Total scale
% 1: Free scale
%----- choose K1 and K2: Roy or Mehrbach.
k1k2flag = 1;	% 0: Roy et al. (1993)
% 1: Mehrbach et al (1973) as
%    refit by Lueker et al. (2000) on total scale.
%----- compare output to CO2SYS? use phflag=0, k1k2flag=1
ocdflag = 1;    % 1: should be close to CO2SYS V1.1 Matlab 09/2011
% 0: else
equic;

tmp1 = -171.9065-0.077993.*TK+2839.319./TK+71.595.*log10(TK);
tmp2 = +(-0.77712+0.0028426.*TK+178.34./TK).*sqrt(S);
tmp3 = -0.07711.*S+0.0041249.*S.^1.5;
log10Kspc = tmp1 + tmp2 + tmp3;

Ksp = 10.^(log10Kspc)*exp(0.00019505*depth);%calcite mucci 1983
%已知co3和pH
CO3=omega*Ksp/Ca;
pH=[7.5:0.1:8.5];
H = 10.^(-pH);

dic = CO3*(1+H/K2+H.*H/K1/K2);

DIC     = dic*1.e6;
hold on 
plot(pH,DIC,'color','k','linewidth',1)

ylim([1800 3000])


%%


%Rp=2.5e-6
ph1=[8.18	8.1	8	7.8	7.5];
dic1=[1800	1900	2030	2350	2900];
%Rp=3e-6
ph2=[8.3 8.2	8.1	8.04];
dic2=[2300 2600	2900	3000];
% Rp=2.3e-6
ph3=[7.85	7.6	7.5];
dic3=[1800	2100	2170];
% Rp=2.7e-6
ph4=[8.35	8.1	7.77];
dic4=[1800	2250	3000];


plot(ph1,dic1,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph2,dic2,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph3,dic3,'--','color',[235,77,75]./255,'linewidth',1)
hold on
plot(ph4,dic4,'--','color',[235,77,75]./255,'linewidth',1)

hold on 
ph11=8.2;
dic11=2000;

ph22=8.05;
dic22=2100;

ph33=7.73;
dic33=2360;
scatter(ph11,dic11,'MarkerEdgeColor',[126,214,223]./255,'linewidth',1.5,'sizedata',50)
hold on
scatter(ph22,dic22,'MarkerEdgeColor',[106,176,76]./255,'linewidth',1.5,'sizedata',50)
hold on
scatter(ph33,dic33,'MarkerEdgeColor',[104,109,224]./255,'linewidth',1.5,'sizedata',50)


title(['(b)'],'Fontsize',14,'Fontweight','bold');

xlabel('pH_{sw}')
ylabel('DIC_{sw} (\mumol/kg)')
box on
ax = gca;
ax.LineWidth = 1.5;
set(findobj(gcf,'type','axes'),'FontName','Times New Roman','FontSize',11,'Fontweight','bold')
xlim([7.5 8.3])
