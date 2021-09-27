Get the highest GPA of junior ( JR ) or senior ( SR ) students by majors. Only list the majors
with average GPA greater than 3.05.

SELECT s.stdmajor, max(s.stdgpa) AS MAX_STDGPA
FROM UNIVDB.student s
WHERE s.stdclass IN ('JR','SR')
GROUP BY s.stdmajor
HAVING AVG(s.stdgpa) > 3.05;