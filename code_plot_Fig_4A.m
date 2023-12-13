%%

clear;clc;close

load('data_Fig_4A.mat');load('color_npg.mat');

%% plot fig4A
f=figure();

% dr-eb
dr=11;j_idx=1;sp_id=[7,26,12,6,23,5,15,6,9,17,20,25,19,13];

axis1=[239 380 200 270];% m=1;l=2;dr=11;  可以
axis1=get_new_axis(axis1);

subplot(2,3,1);
angle=PA_dr.PA_eb(dr);p=angle/2/pi;color_p=hsv2rgb_p(p);
for j=j_idx
    fill(bd_dr_groups{dr}{j}(1,:),bd_dr_groups{dr}{j}(2,:),color_p,'LineWidth',0.3,'LineStyle','None'); hold on;
end
    for j0=1:length(sp_id)
        j=sp_id(j0);
        sp=sp_idx(j);
        if ismember(j,sig_dr.cell_active)
            if ismember(j,sig_dr.cell_eb)
                angle=PA_sp{dr}.PA_eb(j); p=angle/2/pi;color_p=hsv2rgb_p(p);
                fill(bd_sp{sp}(1,:),bd_sp{sp}(2,:),color_p,'LineWidth',0.3);
            else
                fill(bd_sp{sp}(1,:),bd_sp{sp}(2,:),[0.5,0.5,0.5],'LineWidth',0.3);
            end
            %             text(bd_sp{sp}(1,1),bd_sp{sp}(2,1),num2str(j));
        end
    end
% box 颜色
plot([axis1(1) axis1(2) axis1(2) axis1(1) axis1(1)],[axis1(4) axis1(4) axis1(3) axis1(3) axis1(4)],'color',color_npg(3,:));title('Egocentric dendrite');
% plot([axis1(1) axis1(2) axis1(2) axis1(1) axis1(1)],[axis1(4) axis1(4) axis1(3) axis1(3) axis1(4)],'color',[0.5,0.5,0.5]);title('Non-egocentric dendrite');

% scale bar
res=190/512;   % resolution
bar_xlen=5/res; % 5um*1um的bar需要的像素
bar_ylen=1/res; % 5um*1um的bar需要的像素

xr=1/10;yr=8/10;   % bar坐标起点在axis1 box的比例
bar1x=axis1(1)+(axis1(2)-axis1(1))*xr;
bar1y=axis1(3)+(axis1(4)-axis1(3))*yr;
bar1_xpos=[bar1x;bar1x;bar1x+bar_xlen;bar1x+bar_xlen];
bar1_ypos=[bar1y;bar1y+bar_ylen;bar1y+bar_ylen;bar1y];
fill(bar1_xpos,bar1_ypos,[0,0,0],'linestyle','none');text(bar1x+1,bar1y+6,'5 um','color','k');

box off;axis equal;%set(gca,'xtick',[]);set(gca,'ytick',[]);
set(gca,'Ydir','reverse');axis(axis1);axis off;

subplot(2,3,2);  %dendrite tuning
if ~ismember(dr,cell_sig_drm.cell_eb)
    plot(HD_bin,ratemap_dr(dr,:),'color',[0.5,0.5,0.5]);
elseif ismember(dr,cell_sig_drm.cell_eb)
    angle=PA_dr.PA_eb(dr);  p=angle/2/pi;
    color_p=hsv2rgb_p(p);
    plot(HD_bin,ratemap_dr(dr,:),'color',color_p);
end
ylabel('Response(norm.)');%
xlabel('Egocentric Bearing(deg)');
set(gca,'xtick',0:180:360);set(gca,'ytick',0:0.5:1);title('Dendrite');axis([0 360 0 1]);
set(gca,'tickdir','out');box off;axis square;
set(gca,'ticklength',[0.07,0.07]);

subplot(2,3,3);
hold on;
for j0=1:length(sp_id)
    j=sp_id(j0);
    if ismember(j,sig_dr.cell_active)
        if ismember(j,sig_dr.cell_eb)
            angle=PA_sp{dr}.PA_eb(j); p=angle/2/pi;
            color_p=hsv2rgb_p(p);
            plot(HD_bin,ratemap_sp(j,:),'color',color_p);
        else
            plot(HD_bin,ratemap_sp(j,:),'color',[0.5,0.5,0.5]);
        end
    end
    set(gca,'xtick',0:180:360);set(gca,'ytick',0:0.5:1);title(['Spines']);axis([0 360 0 1]);
    set(gca,'tickdir','out');set(gca,'ticklength',[0.07,0.07]);box off;axis square;
end

set(f,'Position',[552   468   710   443]);
