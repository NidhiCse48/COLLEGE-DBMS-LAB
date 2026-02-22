SQL*Plus: Release 21.0.0.0.0 - Production on Sun Feb 22 23:56:15 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sun Feb 22 2026 23:27:04 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Department(
  2  Dept_ID VARCHAR(10) PRIMARY KEY,
  3  Dept_Name VARCHAR(100)NOT NULL,
  4  Office_Location VARCHAR(100));
CREATE TABLE Department(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> SELECT *FROM Department;

DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
           1 Computer Science and Engineering
Block A

           2 Electrical Engineering
Block B

           3 Mechanical Engineering
Block C


DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
           4 Electronics and Communication Engineering
Block D

           5 Civil Engineering
Block E

           6 Electrical and Electronics  Engineering
Block F


DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
           7 3D Animation and Graphics
Block G

           8 COMPUTER SCIENCE ENGINEERING(AI )
Block H

           9 CIVIL ENGINEERING with COMPUTER APPLICATION
Block I


DEPARTMENTID DEPARTMENTNAME
------------ --------------------------------------------------
OFFICELOCATION
--------------------------------------------------
          10 IT
Block J


10 rows selected.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN DepartmentID FORMAT 999;
SQL> COLUMN DepartmentName FORMAT A30;
SQL> COLUMN OfficeLocation FORMAT A20;
SQL> SELECT * FROM Department ORDER BY DepartmentID;

DEPARTMENTID DEPARTMENTNAME                 OFFICELOCATION
------------ ------------------------------ --------------------
           1 Computer Science and Engineeri Block A
             ng

           2 Electrical Engineering         Block B
           3 Mechanical Engineering         Block C
           4 Electronics and Communication  Block D
             Engineering

           5 Civil Engineering              Block E
           6 Electrical and Electronics  En Block F
             gineering

           7 3D Animation and Graphics      Block G
           8 COMPUTER SCIENCE ENGINEERING(A Block H
             I )

           9 CIVIL ENGINEERING with COMPUTE Block I
             R APPLICATION

          10 IT                             Block J

10 rows selected.

SQL> SELECT * FROM Faculty;

 FACULTYID NAME                                               DESIGNATION                                        EMAIL     DEPARTMENTID
---------- -------------------------------------------------- -------------------------------------------------- -------------------------------------------------- ------------
       101 Dr M P Singh                                       Professor                                          mp.singh@bpmce.ac.in                                          1
       102 MITHILESH KUMAR                                    Professor                                          mithilesh.kumar@bpmce.ac.in                                   2
       103 Dr Ajay Giri                                       Professor                                          ajay.giri@bpmce.ac.in                                         3
       104 Prof Ashish Kumar Suman                            Professor                                          ashish.kumar@bpmce.ac.in                                      4
       105 VICKY ANAND                                        Professor                                          vicky.anand@bpmce.ac.in                                       1
       106 Dr AJAY KUMAR                                      Professor                                          Dr.ajay.kumar@bpmce.ac.in                                     6
       107 Dr Prity Kumari Choudhary                          Professor                                          Dr.Priti.kumari@bpmce.ac.in                                   7
       108 Puja Rani                                          Professor                                          Puja.rani@bpmce.ac.in                                         8
       109 Pankaj Kumar                                       Professor                                          Pankaj.kumar@bpmce.ac.in                                      9
       110 Arun Kumar                                         Professor                                          Arun.kumar@bpmce.ac.in                                       10

10 rows selected.

SQL> SET LINESIZE 300;
SQL> COLUMN NAME FORMAT A40;
SQL> COLUMN EMAIL FORMAT A30;
SQL> COLUMN DESIGNATION FORMAT A20;
SQL> SELECT * FROM Faculty;

 FACULTYID NAME                                     DESIGNATION          EMAIL                          DEPARTMENTID
---------- ---------------------------------------- -------------------- ------------------------------ ------------
       101 Dr M P Singh                             Professor            mp.singh@bpmce.ac.in                      1
       102 MITHILESH KUMAR                          Professor            mithilesh.kumar@bpmce.ac.in               2
       103 Dr Ajay Giri                             Professor            ajay.giri@bpmce.ac.in                     3
       104 Prof Ashish Kumar Suman                  Professor            ashish.kumar@bpmce.ac.in                  4
       105 VICKY ANAND                              Professor            vicky.anand@bpmce.ac.in                   1
       106 Dr AJAY KUMAR                            Professor            Dr.ajay.kumar@bpmce.ac.in                 6
       107 Dr Prity Kumari Choudhary                Professor            Dr.Priti.kumari@bpmce.ac.in               7
       108 Puja Rani                                Professor            Puja.rani@bpmce.ac.in                     8
       109 Pankaj Kumar                             Professor            Pankaj.kumar@bpmce.ac.in                  9
       110 Arun Kumar                               Professor            Arun.kumar@bpmce.ac.in                   10

10 rows selected.

SQL> SELECT * FROM Course;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       204 Power System                                                3            3        104
       205 Advanced Java                                               4            1        105
       206 Microprocessor                                              3            2        106
       207 Thermal Engineering                                         4            3        107
       208 Digital Signal Processing                                   4            4        108
       209 Structural Engineering                                      3            9        109
       210 Cloud Computing                                             4           10        110

10 rows selected.

SQL> SELECT * FROM Student;

 STUDENTID NAME                                     GENDER     DATEOFBIR CONTACTNUMBER   DEPARTMENTID CITY                    SEMESTER
---------- ---------------------------------------- ---------- --------- --------------- ------------ ------------------------------ ----------
         1 Nidhi                                    Female     19-NOV-04 9XXXXXXX01                 1
         2 Milli                                    Female     11-FEB-06 96XXXXXX01                 2
         3 Mona                                     Female     11-FEB-04 90XXXXXX06                 3
         4 Jyoti                                    Female     05-MAR-04 90XXXXXX07                 4
         5 Puja                                     Male       02-JAN-02 90XXXXXX09                 5
         6 Aniket                                   Male       17-JUL-02 99XXXXXX79                 6
         7 Pankaj                                   Male       20-MAY-03 80XXXXXX79                 7
         8 Rahul                                    Male       19-NOV-04 77XXXXXX90                 8
         9 Raman                                    Male       10-DEC-03 80XXXXXX12                 9
        10 Shubham                                  Male       03-APR-02 97XXXXXX62                10

10 rows selected.

SQL> SELECT * FROM Course;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       204 Power System                                                3            3        104
       205 Advanced Java                                               4            1        105
       206 Microprocessor                                              3            2        106
       207 Thermal Engineering                                         4            3        107
       208 Digital Signal Processing                                   4            4        108
       209 Structural Engineering                                      3            9        109
       210 Cloud Computing                                             4           10        110

10 rows selected.

SQL> SELECT * FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEMESTER             GRADE
------------ ---------- ---------- -------------------- -----
           1          1        203 Sem-5                A
           2          2        201 Sem-5                A
           3          3        202 Sem-5                B+
           4          4        204 Sem-5                B

SQL> INSERT INTO Enrollment
  2  VALUES('5','5','205','Sem-5','A+');

1 row created.

SQL> INSERT INTO Enrollment
  2   VALUES('6','6','206','Sem-3','A+');

1 row created.

SQL> INSERT INTO Enrollment
  2  VALUES('7','7','207','Sem-4','B+');

1 row created.

SQL>  INSERT INTO Enrollment
  2  VALUES('8','8','208','Sem-4','A');

1 row created.

SQL> INSERT INTO Enrollment
  2   VALUES('9','9','209','Sem-3','B');

1 row created.

SQL> INSERT INTO Enrollment
  2   VALUES('10','10','210','Sem-6','B+');

1 row created.

SQL> SELECT * FROM Enrollment;

ENROLLMENTID  STUDENTID   COURSEID SEMESTER             GRADE
------------ ---------- ---------- -------------------- -----
           1          1        203 Sem-5                A
           2          2        201 Sem-5                A
           3          3        202 Sem-5                B+
           4          4        204 Sem-5                B
           5          5        205 Sem-5                A+
           6          6        206 Sem-3                A+
           7          7        207 Sem-4                B+
           8          8        208 Sem-4                A
           9          9        209 Sem-3                B
          10         10        210 Sem-6                B+

10 rows selected.

SQL> SELECT * FROM Department;

DEPARTMENTID DEPARTMENTNAME                 OFFICELOCATION
------------ ------------------------------ --------------------
           1 Computer Science and Engineeri Block A
             ng

           2 Electrical Engineering         Block B
           3 Mechanical Engineering         Block C
           4 Electronics and Communication  Block D
             Engineering

           5 Civil Engineering              Block E
           6 Electrical and Electronics  En Block F
             gineering

           7 3D Animation and Graphics      Block G
           8 COMPUTER SCIENCE ENGINEERING(A Block H
             I )

           9 CIVIL ENGINEERING with COMPUTE Block I
             R APPLICATION

          10 IT                             Block J

10 rows selected.

SQL> SELECT * FROM Faculty;

 FACULTYID NAME                                     DESIGNATION          EMAIL                          DEPARTMENTID
---------- ---------------------------------------- -------------------- ------------------------------ ------------
       101 Dr M P Singh                             Professor            mp.singh@bpmce.ac.in                   1
       102 MITHILESH KUMAR                          Professor            mithilesh.kumar@bpmce.ac.in            2
       103 Dr Ajay Giri                             Professor            ajay.giri@bpmce.ac.in                  3
       104 Prof Ashish Kumar Suman                  Professor            ashish.kumar@bpmce.ac.in               4
       105 VICKY ANAND                              Professor            vicky.anand@bpmce.ac.in                1
       106 Dr AJAY KUMAR                            Professor            Dr.ajay.kumar@bpmce.ac.in              6
       107 Dr Prity Kumari Choudhary                Professor            Dr.Priti.kumari@bpmce.ac.in            7
       108 Puja Rani                                Professor            Puja.rani@bpmce.ac.in                  8
       109 Pankaj Kumar                             Professor            Pankaj.kumar@bpmce.ac.in               9
       110 Arun Kumar                               Professor            Arun.kumar@bpmce.ac.in                10

10 rows selected.

SQL> SELECT * FROM Course;

  COURSEID COURSENAME                                            CREDITS DEPARTMENTID  FACULTYID
---------- -------------------------------------------------- ---------- ------------ ----------
       201 Thermodynamics                                              4            3        103
       202 Digital Electronics                                         4            4        104
       203 Database Management System                                  4            1        101
       204 Power System                                                3            3        104
       205 Advanced Java                                               4            1        105
       206 Microprocessor                                              3            2        106
       207 Thermal Engineering                                         4            3        107
       208 Digital Signal Processing                                   4            4        108
       209 Structural Engineering                                      3            9        109
       210 Cloud Computing                                             4           10        110

10 rows selected.

SQL>