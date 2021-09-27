Get distinct course numbers of courses taken only by Junior (‘JR’) students.

SELECT distinct o.courseno
FROM univdb.student s
INNER JOIN univdb.enrollment e ON e.stdno = s.stdno
INNER JOIN univdb.offering o ON e.offerno = o.offerno
WHERE s.stdclass = 'JR'
MINUS
SELECT distinct o.courseno
FROM univdb.student s
INNER JOIN univdb.enrollment e ON e.stdno = s.stdno
INNER JOIN univdb.offering o ON e.offerno = o.offerno
WHERE s.stdclass <> 'JR';