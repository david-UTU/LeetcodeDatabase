SELECT a.Department, a.Employee, a.Salary
FROM(SELECT d.name AS Department, e.name AS Employee, Salary, RANK() OVER(partition BY d.name ORDER BY salary DESC) AS rk
  FROM employee e JOIN department d on e.departmentid = d.id) a WHERE a.rk=1
