-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT teachers.name as teacher, 
      students.name as student, 
      assignments.name as assignment, 
      (completed_at - started_at) as duration
FROM assistance_requests ar
INNER JOIN teachers ON ar.teacher_id = teachers.id
INNER JOIN students ON ar.student_id = students.id
INNER JOIN assignments ON ar.assignment_id = assignments.id
ORDER BY duration;