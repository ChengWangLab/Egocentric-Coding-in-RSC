%%

clear;clc;close

load('data_Fig_1B.mat');

%%
f=figure(1);

subplot(1,3,1);
scale=3;
plot(pos_HD(1:scale:end,2),pos_HD(1:scale:end,3),'color',[0.3,0.3,0.3]);
axis equal;axis([-50 50 -50 50]);axis off;

set(f,'Position',[395 395 1130 370]);


%%


