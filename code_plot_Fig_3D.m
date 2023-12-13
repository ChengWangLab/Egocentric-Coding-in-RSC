%%

clear;clc;close

load('data_Fig_3D.mat');

%% 

color1=[255,128,128]/255;color2=[0.7,0.7,0.7];

f=figure(1);
subplot(2,3,1:2);
b=bar([space_2',non_space_2'],'linestyle','none');
b(1).FaceColor=color1;b(2).FaceColor=color2;
hold on;
set(gca,'xtick',1:8,'xticklabel',xlabels);ylabel('Pure proportion');xlabel('Spine types');
lenx=0.3;leny=0.03;%¼Ó¸öbar
x0=2.5;y0=0.49;fill([x0,x0+lenx,x0+lenx,x0],[y0,y0,y0+leny,y0+leny],color1,'linestyle','none');text(x0+lenx+0.1,y0+0.015,'Space dendrite');
x0=2.5;y0=0.39;fill([x0,x0+lenx,x0+lenx,x0],[y0,y0,y0+leny,y0+leny],color2,'linestyle','none');text(x0+lenx+0.1,y0+0.015,'Non-space dendrite');
set(gca,'tickdir','out','ticklength',[0.03,0.03]);
axis([0.5 8.5 0 0.6]);set(gca,'ytick',[0:0.15:0.6]);box off;
plot([5.5,5.7,5.7,5.5],[0.5,0.5,0.4,0.4],'k');
text(5.8,0.45,['p = ',num2str(p_space_dr)]);

subplot(2,3,3);
bar(1,space_2m(3),'linestyle','none','FaceColor',color1);hold on;
bar(2,non_space_2m(3),'linestyle','none','FaceColor',color2);
set(gca,'xtick',1:2,'xticklabel',{'Space','Non-space'});
ylabel('Proportion (egocentric spines)');
xlabel('Dendrite types');
set(gca,'tickdir','out','ticklength',[0.03,0.03]);
axis([0.5 2.5 0 0.6]);set(gca,'ytick',[0:0.15:0.6]);box off;
text(1,0.1,num2str(space_1m(2)),'HorizontalAlignment','center');
text(1,0.2,num2str(space_1m(5)),'HorizontalAlignment','center');
plot([0.8,1.2],[0.15,0.15],'color','k');
text(2,0.1,num2str(non_space_1m(2)),'HorizontalAlignment','center');
text(2,0.2,num2str(non_space_1m(5)),'HorizontalAlignment','center');
plot([1.8,2.2],[0.15,0.15],'color','k');
plot([1,1,2,2],[0.4,0.45,0.45,0.4],'k');
text(1,0.5,['p = ',num2str(pm_space(3))]);
% set(gca,'xticklabelrotation',45);
