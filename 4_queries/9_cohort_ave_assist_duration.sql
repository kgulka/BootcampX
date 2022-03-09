-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration


SELECT AVG(ctd.total_duration) as average_total_duration
FROM
  (SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_duration
  FROM assistance_requests 
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name) ctd
;