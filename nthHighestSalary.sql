SELECT DISTINCT a.salary FROM (SELECT salary, dense_rank() over(ORDER BY salary DESC) as rk FROM employee) a WHERE a.rk = N);
