%%

clear;clc;close

load('data_Fig_5I.mat');

%% 5I

block_label={'Standard';'Right-only';'Left-only'};

f=figure(1);
for i=1:3
    subplot(1,3,i);
    
    imagesc(space_bins,[],m_blocks_map_new_norm{i}(sort_idx,:));colormap(jet);caxis([0 1]);
    set(gca,'xtick',[0,200],'ytick',[1,cell_num]);set(gca,'tickdir','out');box off;
    xlabel('Virtual positions(cm)');
    ylabel('Landmark cells');title(block_label{i});axis square;axis([0 200 0.5 cell_num+0.5]);    
    set(gca,'tickdir','out','ticklength',[0.05,0.05]);
end

%%

