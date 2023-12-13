%%

clear;clc;close

load('data_Fig_S2A.mat');

%% Fig.S2A

subplot(1,3,1);

imagesc(Corr_dr);colormap(jet);colorbar;caxis([0 1]);
set(gca,'xtick',[1,81],'ytick',[1,81]);
xlabel('Dendritic segments');ylabel('Dendritic segments');
title('Correlation matrix');
box off;axis square;

%% Fig.S2B
Corr_dr1=Corr_dr-diag(diag(Corr_dr));
a=Corr_dr1(:);pd1=fitdist(a,'normal');

subplot(1,3,1);
histogram(a,-1:0.05:1,'Normalization','pdf','Facecolor',color_npg(1,:));hold on;
x_values=-1:0.05:1;y = pdf(pd1,x_values);plot(x_values,y,'r');
thr=pd1.mu+3*pd1.sigma;plot([thr thr],[ 0 3],'--');
xlabel('Correlation');ylabel('Probability density');
box off;axis square;axis([-1 1 0 7]);
set(gca,'xtick',[-1:0.5:1],'ytick',[0:3.5:7]);

subplot(1,3,2);
histogram(a,-1:0.05:1,'Normalization','pdf','Facecolor',color_npg(1,:));hold on;
x_values=-1:0.05:1;y = pdf(pd1,x_values);plot(x_values,y,'r');
thr=pd1.mu+3*pd1.sigma;plot([thr thr],[ 0 0.5],'--');
xlabel('Correlation');ylabel('Probability density');
box off;axis square;axis([-1 1 0 0.2]);
set(gca,'xtick',[-1:0.5:1],'ytick',[0:0.1:0.2]);

