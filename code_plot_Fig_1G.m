%%

clear;clc;close

load('data_Fig_1G.mat');

%% Figure 1G EBC population
cell_num_b=size(map2_sort,1);
subplot(1,2,1);
imagesc(HD_bin,[],map2_sort);colormap(jet);caxis([0 inf]);
ylabel('Sorted EBCs');xlabel('Egocentric Bearing(deg)');
if cell_num_b>1;set(gca,'Ytick',[1,cell_num_b]);end

set(gca,'Xtick',0:180:360);set(gca,'tickdir','out','ticklength',[0.05,0.05]);
box off;axis([0 360 0.5 inf]);axis square;
c=colorbar;
set(c,'tickdir','out','ticklength',0.05)  % 朝外
set(c,'YTick',[0,1]); %色标值范围及显示间隔
set(c,'YTickLabel',{'0','max'}) %具体刻度赋值
ylabel(c,'Response(norm.)');

%%

