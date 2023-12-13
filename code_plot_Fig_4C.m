%%

clear;clc;close

load('data_Fig_4C.mat');load('color_npg.mat');

%% Fig.4b
f=figure(1);

color1=color_npg(3,:);color2=[0.7,0.7,0.7];
% switch i=1,2
subplot(2,3,1:2);
b=bar([ego_2',non_ego_2'],'linestyle','none');
b(1).FaceColor=color1;b(2).FaceColor=color2;
hold on;
set(gca,'xtick',1:8,'xticklabel',xlabels);ylabel('Pure proportion');xlabel('Spine types');
lenx=0.3;leny=0.03;%¼Ó¸öbar
x0=2.5;y0=0.49;fill([x0,x0+lenx,x0+lenx,x0],[y0,y0,y0+leny,y0+leny],color1,'linestyle','none');text(x0+lenx+0.1,y0+0.015,'egocentric dendrite');
x0=2.5;y0=0.39;fill([x0,x0+lenx,x0+lenx,x0],[y0,y0,y0+leny,y0+leny],color2,'linestyle','none');text(x0+lenx+0.1,y0+0.015,'non-egocentric dendrite');
set(gca,'tickdir','out','ticklength',[0.03,0.03]);
axis([0.5 8.5 0 0.6]);set(gca,'ytick',[0:0.15:0.6]);box off;

plot([5.7,5.9,5.9,5.7],[0.5,0.5,0.4,0.4],'k');
text(6,0.45,['p = ',num2str(p_ego_dr)]);
