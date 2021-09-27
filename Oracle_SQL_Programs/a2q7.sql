Get the highest GPA of sophomore ( SO ) or junior ( JR ) students by majors. Only list the
majors with average GPA greater than or equal to 3.3.

SELECT s.stdmajor, max(s.stdgpa) AS MAX_STDGPA
FROM UNIVDB.student s
WHERE s.stdclass IN ('SO','JR')
GROUP BY s.stdmajor
HAVING AVG(s.stdgpa) >= 3.3;