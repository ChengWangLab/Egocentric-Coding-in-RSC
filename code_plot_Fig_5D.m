%%

clear;clc;close

load('data_Fig_5D.mat');load('color_npg.mat');

%%
subplot(1,3,1);
histogram(spacing_1,0:5:200,'Normalization','probability','FaceColor',color_npg(1,:));axis([0 200 0 0.25]);
set(gca,'Xtick',0:50:200);set(gca,'Ytick',0:0.05:0.5);
xlabel('Spacing between place fields(cm)','Interpreter','none');
ylabel('Proportion','Interpreter','none');
set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off; axis square;

%%
