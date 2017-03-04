function [Zj,Zj_intensity,count_cells,cellId]=f_hash_Z_intensities(threshold_area,threshold_rainfall,threshold_lunkuo)
date=f_hash_date;
% cellId= f_get_cellId(date,file_i,cell_j)
   count_cells=0;
   for i=0:1:4380
       file_truth='F:\\anal\\anal_';
       file_truth=strcat(file_truth,int2str(i));
       file_truth=strcat(file_truth,'.dat');
      [T_Zj,T_Zj_intensity]=f_new_cells(file_truth,threshold_area,threshold_rainfall,threshold_lunkuo); 
     [a,b]=size(T_Zj);
     if(b==0)
         continue;
     end
     if(count_cells==0)
         Zj=T_Zj;
         Zj_intensity=T_Zj_intensity;
     else
         Zj=[Zj,T_Zj];
         Zj_intensity=[Zj_intensity,T_Zj_intensity];
     end
         for kk=1:b
             count_cells=count_cells+1;
             cellId(count_cells,1)={f_get_cellId(date,i,kk)} ;
         end
     end
end