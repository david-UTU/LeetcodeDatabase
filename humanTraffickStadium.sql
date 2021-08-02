WITH t1 AS(
  SELECT id, visit_date, people, id - ROW_NUMBER() over(ORDER BY visit_date) AS dates
  FROM stadium WHERE people >= 100)

SELECT t1.id, t1.visit_date, t1.people FROM t1
LEFT JOIN (
  SELECT dates, COUNT(*) AS total FROM t1
  GROUP BY dates) AS b
USING (dates)
WHERE b.total > 2
