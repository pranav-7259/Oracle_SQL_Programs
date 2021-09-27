Get the course number, the offering number, and the number of students of the offering
that was registered by more students than any other offerings were.

SELECT * FROM (
SELECT distinct o.courseno,o.offerno,count(distinct e.stdno) AS NO_OF_STUDENTS
FROM univdb.enrollment e
INNER JOIN univdb.offering o ON e.offerno = o.offerno
GROUP BY o.courseno,o.offerno
ORDER BY count(distinct e.stdno) DESC
)
WHERE ROWNUM = 1;