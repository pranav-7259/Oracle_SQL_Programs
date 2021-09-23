1. Consider UnivDb.Student . Retrieve the student numbers and names of non-FIN major
students (i.e., students who do not major in FIN) whose GPA is greater than 3.0. Only relevant
columns should be retrieved, don't use * .

SELECT STDNO, STDFIRSTNAME, STDLASTNAME
FROM UNIVDB.student
WHERE STDMAJOR <> 'FIN' AND STDGPA > 3.0;