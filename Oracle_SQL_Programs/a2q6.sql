List the names of faculty members, the course numbers for which the faculty member
teaches the same course as his or her supervisor in 2017. Also list Supervisor First and Last
Name. 


---Using Self Join


SELECT DISTINCT a.facfirstname,a.faclastname,a.courseno,b.facfirstname AS
SUPFIRSTNAME,b.faclastname AS SUPLASTNAME
FROM
(SELECT f.faclastname, f.facfirstname,f.facsupervisor,o.courseno
FROM univdb.offering o
INNER JOIN univdb.faculty f ON o.facno = f.facno
WHERE o.offyear = 2017)a
INNER JOIN
(SELECT f1.facno,f1.facfirstname, f1.faclastname,o1.courseno
FROM univdb.offering o1
INNER JOIN univdb.faculty f1 ON o1.facno = f1.facno
WHERE o1.offyear = 2017
)b
ON a.facsupervisor = b.facno AND a.courseno = b.courseno;