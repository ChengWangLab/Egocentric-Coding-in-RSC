%%

clear;clc;close

load('data_Fig_5E.mat');

%%
temp_num=size(cue_template,1);
subplot(1,3,1);
imagesc(space_bins,[],cue_template);caxis([0 1]);colormap(parula);freezeColors;
xlabel('Virtual positions (cm)');ylabel('Template number');title('Landmark templates');
set(gca,'xtick',[0,100,200]);set(gca,'ytick',[1,temp_num]);
set(gca,'tickdir','out');box off;
set(gca,'ticklength',[0.05,0.05]);
axis([0 200 0.5 temp_num+0.5]);axis square;

subplot(1,3,2);
imagesc(space_bins,[],rate_map_sort);%colorbar;
colormap(jet);caxis([0 inf]);
xlabel('Virtual positions (cm)');ylabel(['Sorted landmark Cells']);
set(gca,'xtick',[0,100,200]);set(gca,'ytick',[1,cue_cell_num]);
set(gca,'tickdir','out');box off;set(gca,'ticklength',[0.05,0.05]);
axis([0 200 0.5 cue_cell_num+0.5]);axis square;

%%