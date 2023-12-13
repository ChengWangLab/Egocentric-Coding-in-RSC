%%

clear;clc;close

load('data_Fig_3C.mat');

%%

for i=1:2
    subplot(1,3,i);
    if i==1;pie(a3_thr);title('Dendrite');
    elseif i==2;pie(b3_thr);title('Spine');legend(xlabels);end
end

%%


