2. Update records in the Student_tmp_asign3q2 as following.

Satisfy all conditions:
	1. Update StdGPA so that it would increase by 20% only if record is found in the
	univdb.Student table
	
	2. For the records that exists in univdb.Student but not in Student_tmp_asign3q2 create
	new record in Student_tmp_asign3q2 with StdGPA increased by 10%, leave other
	columns unchanged.
	
	
MERGE INTO Student_tmp_asign3q2 tmp using univdb.Student s
ON (tmp.stdno=s.stdno)
WHEN MATCHED THEN
UPDATE
SET tmp.stdgpa=s.stdgpa*1.2
WHEN NOT MATCHED THEN
INSERT(tmp.stdno,tmp.stdfirstname,tmp.stdlastname,tmp.stdcity,tmp.stdstate,tmp.s
tdzip,tmp.stdclass,tmp.stdgpa)
VALUES(s.stdno,s.stdfirstname,s.stdlastname,s.stdcity,s.stdstate,s.stdzip,s.stdc
lass,s.stdgpa*1.1);