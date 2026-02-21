CREATE TABLE Student (
  RollNo INT,
  SName VARCHAR2(50),
  Dept VARCHAR2(20),
  Age INT,
  Phone VARCHAR2(15)
);
Table created.

CREATE TABLE Course (
  CourseID INT,
  CourseName VARCHAR2(50),
  Credits INT
);
Table created.

ALTER TABLE Student ADD City VARCHAR2(30);
Table altered.

ALTER TABLE Student ADD Semester INT;
Table altered.

ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;
Table altered.

DROP TABLE Course;
Table dropped.

DESC Student;
ROLLNO     NUMBER
SNAME      VARCHAR2(50)
DEPT       VARCHAR2(20)
AGE        NUMBER
MOBILENO   VARCHAR2(15)
CITY       VARCHAR2(30)
SEMESTER   NUMBER

INSERT INTO Student VALUES (101,'Riya','EEE',20,'9991110001','Patna',3);
1 row created.

INSERT INTO Student VALUES (102,'Pinki','CSE',21,'9991110002','Ara',4);
1 row created.

INSERT INTO Student VALUES (103,'Rahul','ME',22,'9991110003','Bhojpur',5);
1 row created.

INSERT INTO Student VALUES (104,'Aditya','ECE',20,'9991110004','Delhi',3);
1 row created.

INSERT INTO Student VALUES (105,'Mili','CSE',21,'9991110005','Pune',4);
1 row created.

INSERT INTO Student VALUES (106,'Monu','CSE',22,'9991110006','Patna',5);
1 row created.

INSERT INTO Student VALUES (107,'Sonu','ME',23,'9991110007','Ara',6);
1 row created.

COMMIT;
Commit complete.

SELECT * FROM Student;
101 Riya   EEE 20 9991110001 Patna   3
102 Pinki  CSE 21 9991110002 Ara     4
103 Rahul  ME  22 9991110003 Bhojpur 5
104 Aditya ECE 20 9991110004 Delhi   3
105 Mili   CSE 21 9991110005 Pune    4
106 Monu   CSE 22 9991110006 Patna   5
107 Sonu   ME  23 9991110007 Ara     6

SELECT RollNo, SName FROM Student;
101 Riya
102 Pinki
103 Rahul
104 Aditya
105 Mili
106 Monu
107 Sonu

SELECT * FROM Student WHERE Dept='CSE';
102 Pinki CSE ...
105 Mili  CSE ...
106 Monu  CSE ...

SELECT * FROM Student WHERE Age > 20;
102 Pinki
103 Rahul
105 Mili
106 Monu
107 Sonu

UPDATE Student SET Dept='ECE' WHERE RollNo=101;
1 row updated.

UPDATE Student SET City='Patna' WHERE SName='Rahul';
1 row updated.

UPDATE Student SET Age = Age + 1;
7 rows updated.

DELETE FROM Student WHERE RollNo=107;
1 row deleted.

DELETE FROM Student;
6 rows deleted.

SELECT * FROM Student;
no rows selected