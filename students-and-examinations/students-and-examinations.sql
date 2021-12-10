
WITH cte AS (SELECT student_id, student_name, subject_name
            FROM Students
            CROSS JOIN Subjects)
SELECT cte.student_id, cte.student_name, cte.subject_name, SUM(CASE WHEN e.student_id = cte.student_id AND e.subject_name = cte.subject_name THEN 1 ELSE 0 END) AS attended_exams
FROM cte
LEFT JOIN Examinations AS e
ON cte.student_id = e.student_id
GROUP BY cte.student_id, cte.subject_name
ORDER BY cte.student_id, cte.subject_name ASC