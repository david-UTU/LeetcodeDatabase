WITH t1 AS 
(
  SELECT *, 
  row_number() over(partition BY email ORDER BY id) as rk
  FROM person
)

DELETE FROM person
WHERE id IN (SELECT t1.id FROM t1 WHERE t1.rk>1)
