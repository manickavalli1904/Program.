
Step 1: Make sure Student table has records
SELECT * FROM Student;
Example:
STUDENTID STUDENTNAME DEPARTMENTID
--------- ----------- ------------
101 Arun 10
102 Bala 10
103 Kumar 20
104 Priya 10
Step 2: Create the cursor program
SET SERVEROUTPUT ON;
DECLARE
CURSOR student_cursor IS
SELECT StudentID, StudentName, DepartmentID
FROM Student;
v_student_id Student.StudentID%TYPE;
v_student_name Student.StudentName%TYPE;
v_department_id Student.DepartmentID%TYPE;
BEGIN
OPEN student_cursor;
LOOP
FETCH student_cursor
INTO v_student_id, v_student_name, v_department_id;
EXIT WHEN student_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(
'Student ID: ' || v_student_id ||
' Name: ' || v_student_name ||
' Department ID: ' || v_department_id
);
END LOOP;
CLOSE student_cursor;
END;
/
