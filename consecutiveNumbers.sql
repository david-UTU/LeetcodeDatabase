SELECT DISTINCT a.num AS ConsecutiveNums
FROM(SELECT *, lag(num) over() AS prev, lead(num) over() AS next FROM logs) a
WHERE a.num = a.prev AND a.num=a.next
