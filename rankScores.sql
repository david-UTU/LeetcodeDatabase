SELECT Score, DENSE_RANK() over(ORDER BY score DESC) as "Rank" FROM scores
