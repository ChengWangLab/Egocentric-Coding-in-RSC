%%

clear;clc;close

load('data_Fig_6F.mat');

%%
f=figure(1);
subplot(1,3,1);imagesc(space_bins,[],maps_m);
colormap(jet);caxis([0,1]);
xlabel('Virtual position (cm)');ylabel('Landmark cells');title('Aligned rate maps');box off;
set(gca,'xtick',[0 25 75 125 200],'ytick',[1,cell_num_m],'tickdir','out','ticklength',[0.05,0.05]);
axis([0 200 0.5,cell_num_m+0.5]);axis square;
hold on; 
plot([25,25],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([75,75],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([125,125],[0.5,cell_num_m+0.5],'w','LineWidth',1);

subplot(1,3,2);imagesc(space_bins,[],maps_m_r_ego);
colormap(jet);caxis([0,1]);box off;
% set(gca,'XDir','reverse');
xlabel('Virtual position (cm)');set(gca,'xtick',[0 175 200],'ytick',[1,cell_num_m],'tickdir','out','ticklength',[0.05,0.05]);
axis([0 200 0.5,cell_num_m+0.5]);axis square;
hold on;plot([175,175],[0.5,cell_num_m+0.5],'w','LineWidth',1);
title('Aligned in egocentric assumption');

subplot(1,3,3);imagesc(space_bins,[],maps_m_r_allo);
colormap(jet);caxis([0,1]);box off;
% set(gca,'XDir','reverse');
xlabel('Virtual position (cm)');set(gca,'xtick',[0 25 75 125 200],'ytick',[1,cell_num_m],'tickdir','out','ticklength',[0.05,0.05]);
axis([0 200 0.5,cell_num_m+0.5]);axis square;
hold on;
plot([25,25],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([75,75],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([125,125],[0.5,cell_num_m+0.5],'w','LineWidth',1);
title('Aligned in allocentric assumption');
