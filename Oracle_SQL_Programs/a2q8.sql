List the course number, offering number, number of students, and average enrollment
grade of IS course offerings in which more than 5 students are enrolled. Sort the result by
course number in ascending order, and next the number of students in descending order.

SELECT distinct o.courseno,o.offerno,count(distinct e.stdno) AS NO_OF_STUDENTS,
avg(e.enrgrade) AS AVG_ENRL_GRADE
FROM univdb.enrollment e
INNER JOIN univdb.offering o ON e.offerno = o.offerno
GROUP BY o.courseno,o.offerno
HAVING (o.courseno LIKE 'IS%' AND count(distinct e.stdno)>5)
ORDER BY o.courseno ASC, count(distinct e.stdno) DESC;