SELECT a.Name AS Employee
FROM employee a, employee b
WHERE a.salary > b.salary AND a.managerid = b.id

