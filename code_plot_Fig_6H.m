%%

clear;clc;close

load('data_Fig_6H.mat');

%%
[p, h, stats]=signrank(corr_1,corr_2);

f=figure(1);
subplot(2,3,2);
plot(corr_1,corr_2,'.','color','k');
xlabel({'Corrlation with allocentric template'});ylabel({'Corrlation with egocentric template'});
set(gca,'xtick',[-1,0,1],'ytick',[-1,0,1]);set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;axis square;
axis([-1 1 -1 1]);hold on;
plot([-1,1],[-1,1],'--','color',[0.5,0.5,0.5]);

subplot(2,30,8);
imagesc([],space_bins,ego_temp_r(6,:)');axis xy;
box off;set(gca,'xtick',[],'ytick',[0,175,200],'tickdir','out','ticklength',[0,0]);
ylabel('Egocentric template');

subplot(20,3,35);
imagesc(space_bins,[],cue_template(6,:));axis xy;
box off;set(gca,'xtick',[0,25,75,125,200],'ytick',[],'tickdir','out','ticklength',[0,0]);
xlabel('Allocentric template');

set(f,'Position',[478 450 863 535]);

%%

