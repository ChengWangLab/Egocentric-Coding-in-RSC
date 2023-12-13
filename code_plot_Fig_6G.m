%%

clear;clc;close

load('data_Fig_6G.mat');load('color_npg.mat');

%%
subplot(1,3,1);

fill([space_bins,fliplr(space_bins)],[shuff_upper,fliplr(shuff_lower)],[0.7,0.7,0.7],'linestyle','none','FaceAlpha',0.5);hold on;
plot(space_bins,maps_shuff_mean,'--','color',[0.5,0.5,0.5]);

plot(space_bins,maps_r_mean_norm_ego,'color',color_npg(8,:));
plot(space_bins,maps_r_mean_norm_allo,'color',color_npg(3,:));

plot(space_bins,p_bars_ego,'color',color_npg(8,:));
plot(space_bins,p_bars_allo,'color',color_npg(3,:));

box off;
set(gca,'xtick',[0 25 75 125 175 200],'ytick',[0,0.5,1],'tickdir','out','ticklength',[0.05,0.05]);
axis([0 200 0 1.2]);axis square;
xlabel('Virtual position (cm)');ylabel('Responses mean (norm.)');
