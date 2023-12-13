%%

clear;clc;close

load('data_Fig_2E.mat');

%% plot population
figure(1);
subplot(1,2,1);
bin_num=12;
HD_bins=pi/bin_num:2*pi/bin_num:2*pi;
HD_bins=HD_bins*180/pi;

imagesc(HD_bins,[],ratemap_sort1);colormap(jet);
set(gca,'Xtick',0:180:360);set(gca,'Ytick',[1,36]);axis([0 360 0.5 inf]);
set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;
xlabel('Egocentric Bearing(deg)');ylabel('Sorted dendrite clusters');caxis([0 inf]);axis square;

subplot(1,2,2);
imagesc(HD_bins,[],ratemap_sort2);colormap(jet);
set(gca,'Xtick',0:180:360);set(gca,'Ytick',[1,241]);axis([0 360 0.5 inf]);
set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;
xlabel('Egocentric Bearing(deg)');ylabel('Sorted spines');caxis([0 inf]);axis square;
