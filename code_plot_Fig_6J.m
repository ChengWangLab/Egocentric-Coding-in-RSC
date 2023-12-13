%%

clear;clc;close

load('data_Fig_6J.mat');

%% 2Hz temp map
ylables={'Sorted dendritic clusters';'Sorted spines'};

figure(1)

for i=1:2
    corr_drift=Corr_drift{i};
    rate_map=Rate_map{i};
    [~,temp_index]=max(corr_drift,[],2);
    [~,idx]=sort(temp_index);
    rate_map_sort=rate_map(idx,:);
    cue_cell_num=size(rate_map,1);
    
    subplot(1,3,i);
    imagesc(space_bins,[],rate_map_sort);%colorbar;
    colormap(jet);caxis([0 inf]);
    xlabel('Virtual Positions (cm)');ylabel(ylables{i});
    
    set(gca,'xtick',[0,100,200]);set(gca,'ytick',[1,cue_cell_num]);
    set(gca,'tickdir','out');box off;
    set(gca,'ticklength',[0.05,0.05]);
    axis([0 200 0.5 cue_cell_num+0.5]);axis square;
end
