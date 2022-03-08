--get the total number of assigments for each day of bootcamp

SELECT day, count(id) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;