Get distinct course numbers of courses offered by faculty members who are not LEONARD
FIBON . Sort the output.

SELECT distinct o.courseno
FROM univdb.faculty f
INNER JOIN univdb.offering o ON f.facno = o.facno
WHERE f.facfirstname <> 'LEONARD' AND f.faclastname <> 'FIBON'
ORDER BY o.courseno;