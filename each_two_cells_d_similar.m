close all;
clear all;
clc;
threshold_area=8;
threshold_rainfall=15;
threshold_lunkuo=10;
[Zj,Zj_intensity,count_cells,cellId]=f_hash_Z_intensities(threshold_area,threshold_rainfall,threshold_lunkuo);

for i=count_cells:-1:1
    t_Zj=Zj(:,i);
    Cmin_Zj=Zj_intensity(3,i);
    Cmax_Zj=Zj_intensity(4,i);
    Cavg_Zj=Zj_intensity(5,i);
    outputpath='F:\\15rain_similar\\';
    outputpath=strcat(outputpath,int2str(i));
    outputpath=strcat(outputpath,'.txt');
    fid=fopen(outputpath,'a');
    fprintf(fid,'%s\r\n',char(cellId(i,1)));
    for j=i-1:-1:1
        t_Zjk=Zj(:,j);
         Cmin_Zjk=Zj_intensity(3,j);
         Cmax_Zjk=Zj_intensity(4,j);
         Cavg_Zjk=Zj_intensity(5,j);
         D=f_res(t_Zjk,t_Zj,Cavg_Zjk,Cavg_Zj,Cmin_Zjk,Cmin_Zj,Cmax_Zjk,Cmax_Zj);
         if(D<10)
             fprintf(fid,'%s\r\n',char(cellId(j,1)));
         end
    end
    fclose(fid);
end