%%

clear;clc;close

load('data_Fig_5J.mat');

%% 5J
[p, h, stats]=signrank(corr_proximal,corr_distal);
subplot(1,2,1);
plot(corr_proximal,corr_distal,'.k');
xlabel({'proximal landmark disappeared','corrlation with Standard'});ylabel({'corrlation with Standard','distal landmark disappeared'});
set(gca,'xtick',[-1,0,1]);set(gca,'ytick',[-1,0,1]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;axis square;
axis([-1 1 -1 1]);hold on;
title(['p = ',num2str(p)]);
plot([-1,1],[-1,1],'--','color',[0.5,0.5,0.5]);

%%
