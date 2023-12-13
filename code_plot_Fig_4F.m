%%

clear;clc;close

load('data_Fig_4F.mat');load('color_npg.mat');

%%
MVL_m=[MVL_eb;MVL_ebnot];
kappa_m=[kappa_eb;kappa_ebnot];

[r1,p1]=corrcoef(MVL_m,kappa_m);

%% plot kappa vs MVL
subplot(1,2,1);
plot(kappa_eb,MVL_eb,'.','color',color_npg(3,:));hold on;plot(kappa_ebnot,MVL_ebnot,'.','color',[0.5,0.5,0.5]);
ylabel('Dendritic MVL');xlabel({'Von Mises Kappa';'Egocentric spine distribution'});
title(['r = ',num2str(r1(2)),', p = ',num2str(p1(2))]);
axis([0 2 0 0.5]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);
set(gca,'xtick',0:0.5:2);set(gca,'ytick',0:0.25:0.5);box off;axis square;

