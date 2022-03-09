-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

-- Perform the same query as before, but include the number of assistances as well.

SELECT  teachers.name as teacher, 
        cohorts.name as cohort, 
        count(ar) as total_assistances
FROM cohorts
INNER JOIN students ON cohorts.id = students.cohort_id
INNER JOIN assistance_requests ar ON  ar.student_id = students.id
INNER JOIN teachers ON teachers.id = ar.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;