SELECT Name AS Customers
FROM Customers
WHERE id != ALL(SELECT c.id
  FROM Customers c, Orders o
  WHERE c.id = o.Customerid)
