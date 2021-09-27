2. Get the offering number, the course number, and the course description for the SUMMER
2017 offerings without an assigned instructor.

SELECT o.offerno, o.courseno, c.crsdesc
FROM UNIVDB.offering o
INNER JOIN UNIVDB.course c
ON o.courseno = c.courseno
WHERE (o.offterm = 'SUMMER' AND o.offyear = 2017)
AND FACNO IS NULL;