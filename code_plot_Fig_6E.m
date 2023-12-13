%%

clear;clc;close

load('data_Fig_6E.mat');

%%
f=figure(1);
subplot(1,3,1);
imagesc(space_bins,[],map_m_sort);colormap(jet);caxis([0,1]);
xlabel('Virtual position(cm)');ylabel('landmark cells ');title('tuning in three fields direction');box off;
set(gca,'xtick',[0 25 75 125 200],'ytick',[1,cell_num_m],'tickdir','out','ticklength',[0.03,0.03]);
axis([0 200 0.5,cell_num_m+0.5]);axis square;
hold on; 
plot([25,25],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([75,75],[0.5,cell_num_m+0.5],'w','LineWidth',1);
plot([125,125],[0.5,cell_num_m+0.5],'w','LineWidth',1);

subplot(1,3,2);
imagesc(space_bins,[],map_m_sort_r);colormap(jet);caxis([0,1]);
xlabel('Virtual Positions(cm)');title('tuning in opposite direction');box off;%set(gca,'XDir','reverse');
set(gca,'xtick',[0 175 200],'ytick',[1,cell_num_m],'tickdir','out','ticklength',[0.03,0.03]);
axis([0 200 0.5,cell_num_m+0.5]);axis square;
hold on;plot([175,175],[0.5,cell_num_m+0.5],'w','LineWidth',1);
