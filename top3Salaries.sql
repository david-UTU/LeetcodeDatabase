SELECT a.department, a.employee, a.salary
FROM(
  SELECT d.name AS department, e.name AS employee, salary, dense_rank() over(PARTITION BY d.name ORDER BY salary DESC) as rk
FROM Employee e JOIN Department d
  ON e.departmentid =d.id) a WHERE a.rk<4
