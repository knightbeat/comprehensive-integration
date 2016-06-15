--CREATE SCHEMA AUTHORIZATION invadm
CREATE TABLE students
  (
    student_id    VARCHAR2(8) PRIMARY KEY,
    first_name    VARCHAR2(24),
    last_name     VARCHAR2(24),
    date_of_birth DATE
  );

DELETE FROM students;

INSERT INTO students(student_id,first_name,last_name,date_of_birth)  VALUES('02341334','Jessey','Pinkman',TO_DATE('1979/04/08', 'yyyy/mm/dd'));
INSERT INTO students(student_id,first_name,last_name,date_of_birth)  VALUES('02341335','Walter','White',TO_DATE('1954/08/10', 'yyyy/mm/dd'));
INSERT INTO students(student_id,first_name,last_name,date_of_birth)  VALUES('02341336','Gustavo','Fring',TO_DATE('1960/02/16', 'yyyy/mm/dd'));

SELECT * FROM students;