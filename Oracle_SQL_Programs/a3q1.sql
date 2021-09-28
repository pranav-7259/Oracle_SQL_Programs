1. Update records in the Student_tmp_asign3q1 as following. Satisfy all conditions:
	1. Update StdGPA so that it would increase by 40%
	2. Cap the resulting GPA to 4.0
	3. Only update student record if it is found in the univdb.Student table
	
	
UPDATE student_tmp_asign3q1 tmp
SET tmp.stdgpa = (
CASE
WHEN 1.4*tmp.stdgpa < 4 THEN tmp.stdgpa*1.4
ELSE 4
END
)
WHERE EXISTS(select 1
FROM univdb.student st
where st.stdno = tmp.stdno);