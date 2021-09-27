Get the student numbers and names of students who did not take any FIN courses. Sort by
First and then Last name

SELECT *
FROM (
SELECT distinct s.stdno,s.stdfirstname,s.stdlastname
FROM univdb.student s
INNER JOIN univdb.enrollment e ON e.stdno = s.stdno
INNER JOIN univdb.offering o ON e.offerno = o.offerno
MINUS
SELECT distinct s.stdno,s.stdfirstname,s.stdlastname
FROM univdb.student s
INNER JOIN univdb.enrollment e ON e.stdno = s.stdno
INNER JOIN univdb.offering o ON e.offerno = o.offerno
WHERE o.courseno LIKE 'FIN%')a
ORDER BY a.stdfirstname,a.stdlastname;