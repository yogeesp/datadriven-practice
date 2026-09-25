SELECT 
    pipe_name, 
    rows_out
FROM 
    data_pipes
where 
    rows_out < 2000
ORDER BY 
    rows_out DESC, 
    pipe_name ASC;
