%%

clear;clc;close

load('data_Fig_7D.mat');

%%
f=figure();
subplot(2,3,1);
imagesc(HD_bin,[],map11_sort);colormap(jet);caxis([0 1]);
xlabel('Egocentric Cue Angle(deg)');ylabel('sorted ECCs');title('Signal-On');set(gca,'Xtick',0:180:360);
if cell_num_a>1;set(gca,'Ytick',[1,cell_num_a]);end
axis([0 360 0.5 inf]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;axis square;

subplot(2,3,2);
imagesc(HD_bin,[],map22_sort);colormap(jet);caxis([0 1]);
xlabel('Egocentric Trace Angle(deg)');ylabel('sorted ETCs');title('Signal-Off');set(gca,'Xtick',0:180:360);
if cell_num_b>1;set(gca,'Ytick',[1,cell_num_b]);end
axis([0 360 0.5 inf]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;axis square;

set(f,'Position',[ 561.8000  343.4000  873.6000  528.0000]);

%%

