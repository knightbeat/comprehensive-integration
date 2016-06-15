create database course_admin_db;
USE course_admin_db;
CREATE TABLE enrollments
 (
 student_id VARCHAR(8) NOT NULL,
 enrolment_time INT,
 enrolment_date DATETIME,
 subject VARCHAR(6)
)

insert into enrollments values('02341334',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'5242GW');
insert into enrollments values('02341335',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'5242GW');
insert into enrollments values('02341336',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'5242GW');
insert into enrollments values('02341335',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'ERP2GW');
insert into enrollments values('02341336',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'ERP2GW');
insert into enrollments values('02341336',594673,convert(datetime,'18-06-12 10:34:09 PM',5),'ERAU27');