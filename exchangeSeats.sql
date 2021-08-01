SELECT row_number() over(ORDER BY (if(id%2=1, id+1, id-1)) AS id, student FROM seat
