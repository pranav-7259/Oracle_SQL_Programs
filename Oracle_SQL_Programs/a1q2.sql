2. Get offering number, course number, and offering term for offerings without an assigned
instructor.

SELECT OFFERNO, COURSENO, OFFTERM
FROM UNIVDB.offering
WHERE FACNO is NULL;