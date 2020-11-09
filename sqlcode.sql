/* Assessment question 4.a */

/*creating the database*/
CREATE DATABASE education;

/*defining specific database to start usage*/
USE education;

/* creating table student */
CREATE TABLE student (studentid INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(250),course INT(11));

/* creating table course */
CREATE TABLE course (courseid INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(250),institution INT(11));

/* creating table institution */
CREATE TABLE institution (institutionid INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR(250));

/* add some dummy data to table institution */
INSERT INTO institution (NAME) VALUES('University COLLEGE Dublin');
INSERT INTO institution (NAME) VALUES('University COLLEGE London');

/* check for values in table institution */
SELECT * FROM institution;

/* add some dummy data to table course */
INSERT INTO course (NAME,institution) VALUES('BSC. Acturial Science',1);
INSERT INTO course (NAME,institution) VALUES('Mphil Genomics', 2);

/* check for values in table institution */
SELECT * FROM course;

/*add some data to table student */
INSERT INTO student (NAME,course) VALUES('Daniel opiyo',3);
INSERT INTO student (NAME,course) VALUES('Joel kamau',3);
INSERT INTO student (NAME,course) VALUES('Johnstone',3);
INSERT INTO student (NAME,course) VALUES('Muinde',3);
INSERT INTO student (NAME,course) VALUES('Job',4);
INSERT INTO student (NAME,course) VALUES('Mutunga Samson',4);
INSERT INTO student (NAME,course) VALUES('Joel Mutindi',4);
/* check for values in table institution */
SELECT * FROM student;

/* Assessment Question 4.b.......*/
SELECT institution.name AS 'INSTITUTION NAME', course.name AS 'COURSE NAME', (SELECT COUNT(studentid) FROM student WHERE course=courseid) AS 'NUMBER OF STUDENTS' FROM institution INNER JOIN course ON institution.institutionid=course.institution;
