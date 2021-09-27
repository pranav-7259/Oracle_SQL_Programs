For the courses taken by senior ( SR ) students in the FIN or IS majors, get the course
numbers and count of students that took them . Display class with highest number of
enrolled students first.

SELECT temp.courseno,count(DISTINCT temp.stdno) AS "COUNT OF STUDENTS"
FROM
(
	SELECT s.*,e.offerno,o.courseno
	FROM UNIVDB.student s
	INNER JOIN univdb.enrollment e ON s.stdno = e.stdno
	INNER JOIN univdb.offering o ON o.offerno = e.offerno
	WHERE s.stdmajor IN ('FIN','IS') AND s.stdclass = 'SR'
) temp
GROUP BY temp.courseno
ORDER BY count(DISTINCT temp.stdno) DESC;