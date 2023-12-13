%%

clear;clc;close

load('data_Fig_4D.mat');load('color_npg.mat');

%% active spines npg
color_eb=color_npg(3,:);color_ebnot=[0.7,0.7,0.7];
color_shuff=color_npg(2,:);

f=figure(1);
subplot(2,3,1:2);
plot([dis_bins(1)-5,dis_bins(end)+5],[0,0],'--','color',color_npg(10,:));
hold on;
errorbar(dis_bins,corr_bins_eb_act_dr_eb_mean,corr_bins_eb_act_dr_eb_sem,'o','linewidth',1.5,'color',color_eb);
errorbar(dis_bins+2,corr_bins_eb_act_dr_ebnot_mean,corr_bins_eb_act_dr_ebnot_sem,'v','linewidth',1.5,'color',color_ebnot);
errorbar(dis_bins-2,ones(3,1)*u(1),ones(3,1)*corr_sem(1),'.','linewidth',1.5,'color',color_shuff);

set(gca,'Xtick',dis_bins,'Xticklabel',{'0 to 12.5','12.5 to 25','> 25'});
set(gca,'Ytick',[-0.1,0,0.1,0.2]);axis([dis_bins(1)-5 dis_bins(end)+5 -0.10 0.2]);
xlabel('Dendritic distance (um)');ylabel('Spine-spine correlation');box off;%axis square;
set(gca,'tickdir','out','ticklength',[0.05,0.05]);

y0=0.10;
for i=1:3
plot([dis_bins(i)+0.1,dis_bins(i)+0.1,dis_bins(i)+2,dis_bins(i)+2],[y0,y0+0.01,y0+0.01,y0],'k');
text(dis_bins(i),y0+0.02,['p=',num2str(corr_diff_test_bins{i}.p_median)]);
plot([dis_bins(i)-0.1,dis_bins(i)-0.1,dis_bins(i)-2,dis_bins(i)-2],[y0+0.04,y0+0.05,y0+0.05,y0+0.04],'k');
text(dis_bins(i)-2,y0+0.06,['p=',num2str(p_shuff_corr_eb(i,1))]);
plot([dis_bins(i)-2,dis_bins(i)-2,dis_bins(i)+2,dis_bins(i)+2],[y0+0.08,y0+0.09,y0+0.09,y0+0.08],'k');
text(dis_bins(i)-2,y0+0.1,['p=',num2str(p_shuff_corr_ebnot(i,1))]);
end

% °×É«±ß½ç
