Get the student numbers, names, majors, and GPAs of students who took course FIN300 in
the WINTER 2017. In addition, display student's class grade for the class FIN300 in WINTER
2017.

SELECT s.stdno, s.stdfirstname, s.stdlastname, s.stdmajor, s.stdgpa, e.enrgrade
FROM UNIVDB.student s
INNER JOIN UNIVDB.enrollment e ON s.stdno = e.stdno
INNER JOIN UNIVDB.offering o ON e.offerno = o.offerno
WHERE (o.offterm = 'WINTER' AND o.offyear = 2017) AND o.courseno = 'FIN300' ;