function cellId= f_get_cellId(date,file_i,cell_j)
year=date(file_i+1,1);
month=date(file_i+1,2);
day=date(file_i+1,3);
 str_year=int2str(year);
 str_month=int2str(month);
 str_day=int2str(day);
 if(month<10)
     str_month=strcat('0',str_month);
 end
 if(day<10)
     str_day=strcat('0',str_day);
 end
 str_cell_j=int2str(cell_j);
 str_cell_j=strcat('.',str_cell_j);
 cellId=str_year;
 cellId=strcat(cellId,str_month);
 cellId=strcat(cellId,str_day);
 cellId=strcat(cellId,str_cell_j);
end