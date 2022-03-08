--get the total number of assignments for each day of bootcamp where the
--assignment total is greater than or equal to 10.

SELECT day, count(id) as total_assignments
FROM assignments
GROUP BY day
HAVING count(id) >= 10
ORDER BY day;