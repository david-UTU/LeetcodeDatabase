SELECT Email
FROM (SELECT Email, COUNT(Email)
  FROM person
  GROUP BY Email
  HAVING COUNT(Email)>1) a
