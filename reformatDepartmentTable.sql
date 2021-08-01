SELECT id,
SUM(if(month='Jan', revenue, NULL)) as Jan_Revenue,
SUM(if(month='Feb', revenue, NULL)) as Feb_Revenue,
SUM(if(month='Mar', revenue, NULL)) as Mar_Revenue,
SUM(if(month='Apr', revenue, NULL)) as Apr_Revenue,
SUM(if(month='May', revenue, NULL)) as May_Revenue,
SUM(if(month='Jun', revenue, NULL)) as Jun_Revenue,
SUM(if(month='Jul', revenue, NULL)) as Jul_Revenue,
SUM(if(month='Aug', revenue, NULL)) as Aug_Revenue,
SUM(if(month='Sep', revenue, NULL)) as Sep_Revenue,
SUM(if(month='Oct', revenue, NULL)) as Oct_Revenue,
SUM(if(month='Nov', revenue, NULL)) as Nov_Revenue,
SUM(if(month='Dec', revenue, NULL)) as Dec_Revenue
FROM Department
GROUP BY id
