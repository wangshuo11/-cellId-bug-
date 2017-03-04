close all;
clear all;
clc;
threshold_area=8;
threshold_rainfall=25;
threshold_lunkuo=10;
[Zj,Zj_intensity,count_cells,cellId]=f_hash_Z_intensities(threshold_area,threshold_rainfall,threshold_lunkuo);
fid=fopen('F:\\cellId.txt','a');
for i=1:count_cells
    fprintf(fid,'%s\r\n',cell2mat(cellId(i,1)));
end
fclose(fid);