Get the student numbers and names of non-FIN major students (i.e., students who do not
major in FIN) whose GPA is greater than 3.4.

SELECT s.stdno, s.stdfirstname,s.stdlastname
FROM UNIVDB.student s
WHERE s.stdmajor <> 'FIN' AND s.stdgpa > 3.4;