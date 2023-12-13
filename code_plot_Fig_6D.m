%%

clear;clc;close

load('data_Fig_6D.mat');

%% plot templates
figure(1)
subplot(1,3,1);
imagesc(space_bins,[],cue_template);title('landmark templates');%colormap(jet);
caxis([0,1]);box off;
set(gca,'xtick',[0 100 200],'ytick',[1,size(cue_template,1)],'tickdir','out','ticklength',[0.03,0.03]);
axis([0 200 0.5,size(cue_template,1)+0.5]);axis square;
xlabel('Virtual Positions(cm)');ylabel('template number');

%%

