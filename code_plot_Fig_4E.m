%%

clear;clc;close

load('data_Fig_4E.mat');

%% plot cdf of correlation for EB spine
subplot(1,2,1);
data_bins=-1:0.05:1;
k1=histc(corr_ds_eb_all_3_merge,data_bins);k2=histc(corr_ds_eb_all_5_merge,data_bins);
k11=cumsum(k1)/sum(k1);k22=cumsum(k2)/sum(k2);
k11=[0;k11(1:end-1)];k22=[0;k22(1:end-1)];
plot(data_bins,k11,'color',color_eb);hold on;plot(data_bins,k22,'color',color_ebnot);
xlabel('dendrite-spine correlation');ylabel('cumulative probability');box off;axis square;
set(gca,'Xtick',-1:1:1);set(gca,'Ytick',[0,0.5,1]);axis([-1 1 0 1]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);
title(['p = ',num2str(p_corr_ds)]);
lenx=0.2;%¼Ó¸öbar
x0=-0.9;y0=0.9;plot([x0,x0+lenx],[y0,y0],'color',color_eb);text(x0+lenx+0.1,y0+0.01,'egocentric dendrite');
x0=-0.9;y0=0.8;plot([x0,x0+lenx],[y0,y0],'color',color_ebnot);text(x0+lenx+0.1,y0+0.01,'non-egocentric dendrite');
