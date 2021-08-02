WITH t1 AS(
  SELECT request_at, COUNT(status) AS total
  FROM trips WHERE client_id = ANY(SELECT users_id FROM users WHERE banned != 'Yes')
  AND driver_id = ANY(SELECT users_id FROM users WHERE banned != 'Yes')
  AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
  GROUP BY request_at),

t2 AS(
  SELECT request_at, COUNT(status) AS cancel
  FROM trips WHERE client_id = any(SELECT users_id FROM users WHERE banned !='Yes')
  AND driver_id = any(SELECT users_id FROM users WHERE banned != 'Yes')
  AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
  AND status != 'completed'
  GROUP BY request_at)

SELECT request_at as Day, COALESCE(ROUND((cancel+0)/(total+0),2),0) AS "Cancellation Rate"
FROM t1 LEFT JOIN t2 USING(request_at)
