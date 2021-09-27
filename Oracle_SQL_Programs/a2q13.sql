For each faculty department, find the faculty number, name, and the salary of faculty who
receive the highest salary in the department.

SELECT DISTINCT a.facdept,a.facno,a.facfirstname,a.faclastname,a.facsalary
FROM
(SELECT DISTINCT f.facno,f.facfirstname,f.faclastname,f.facdept,f.facsalary
FROM
univdb.faculty f)a
INNER JOIN
(SELECT DISTINCT f.facdept,max(f.facsalary) AS MAX_DEPT_SALARY
FROM
univdb.faculty f
GROUP BY f.facdept)b
ON a.facsalary = b.MAX_DEPT_SALARY;