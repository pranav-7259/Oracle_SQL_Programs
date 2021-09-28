3. Update Student_tmp_asign3q3 so that
	1. The StdGPA reflects average StdGPA for the student StdClass the particular student
	belongs to.
	
	2. Only students found in the univdb.Student should be updated
	
	
UPDATE student_tmp_asign3q3 tmp3
SET stdgpa = (
select avg(s.stdgpa) from univdb.student s
where tmp3.stdmajor = s.stdmajor
group by tmp3.stdmajor
)
WHERE EXISTS(select 1
FROM univdb.student st
where st.stdno = tmp3.stdno);