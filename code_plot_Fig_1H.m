%%

clear;clc;close

load('data_Fig_1H.mat');load('color_npg.mat');

%%
subplot(3,2,1);
histogram(Avg_angle_eb,0:30:360,'Normalization','probability','FaceColor',color_npg(1,:));axis([0 360 0 0.15]);set(gca,'Xtick',0:90:360);set(gca,'Ytick',0:0.05:0.25);
xlabel('Preferred bearing(deg)','Interpreter','none');
ylabel('Proportion','Interpreter','none');set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off; 

subplot(3,2,3);
histogram(Peak_distance,[2:2:30],'Normalization','probability','FaceColor',color_npg(1,:));
axis([2 30 0 0.3]);set(gca,'Xtick',[2 ,10,20,30]);set(gca,'Ytick',0:0.1:0.3);
xlabel('Preferred distance(cm)','Interpreter','none');
ylabel('Proportion','Interpreter','none');set(gca,'tickdir','out','ticklength',[0.05,0.05]);box off;

%%

