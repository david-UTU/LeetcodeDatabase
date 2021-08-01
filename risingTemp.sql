SELECT a.Id
FROM weather a, weather b
WHERE a.Temperature > b.Temperature and datediff(a.recorddate, b.recorddate)=1
