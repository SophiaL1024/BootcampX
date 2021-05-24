SELECT students.name AS student,avg(assignment_submissions.duration) AS average_assignment_duration 
FROM assignment_submissions
JOIN students ON students.id=assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;
