-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_time
FROM assistance_requests ar
INNER JOIN students ON ar.student_id = students.id
INNER JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time
;