-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT a.id, name, day, chapter, count(ar.*) as total_requests
FROM assignments a
INNER JOIN assistance_requests ar ON ar.assignment_id = a.id
GROUP BY  a.id, 
          a.name, 
          a.day, 
          a.chapter
ORDER BY total_requests DESC;

--works too
-- SELECT a.id, name, day, chapter, count(ar.*) as total_requests
-- FROM assignments a
-- INNER JOIN assistance_requests ar ON ar.assignment_id = a.id
-- GROUP BY  a.id
-- ORDER BY total_requests DESC;

--works too
-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;