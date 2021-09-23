3. Consider UnivDb.Student . Get following:
	1. Student First and Last name as one column (concatenate strings) separated by space
	2. Student Major and Class in a single field separated by ''-''
	3. Student GPA.
	4. Sort by GPA in descending order

SELECT (STDFIRSTNAME || ' ' || STDLASTNAME) AS STUDENT_NAME,
(TRIM(STDMAJOR) || '-' || TRIM(STDCLASS)) AS MAJOR_CLASS, STDGPA
FROM UNIVDB.student
ORDER BY STDGPA DESC;