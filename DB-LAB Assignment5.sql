SQL*Plus: Release 21.0.0.0.0 - Production on Fri Feb 20 21:26:19 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Fri Feb 20 2026 20:51:57 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL>  SELECT S.StudentID,S.Name,E.CourseID FROM Student S
  2   INNER JOIN Enrollment E ON S.StudentID=E.StudentID;

 STUDENTID NAME                                                 COURSEID
---------- -------------------------------------------------- ----------
         1 Nidhi                                                     203
         2 Milli                                                     201
         3 Mona                                                      202
         4 Jyoti                                                     204

SQL>  SELECT S.Name,E.Semester FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID;

NAME                                               SEMESTER
-------------------------------------------------- --------------------
Nidhi                                              Sem-5
Milli                                              Sem-5
Mona                                               Sem-5
Jyoti                                              Sem-5

SQL>  SELECT S.Name ,E.Grade FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID;

NAME                                               GRADE
-------------------------------------------------- -----
Nidhi                                              A
Milli                                              A
Mona                                               B+
Jyoti                                              B

SQL>   3
SQL> SELECT C.CourseName,C.Credits,F.Name FROM Course C
  2  INNER JOIN Faculty F ON C.FacultyID=F.FacultyID;

COURSENAME                                            CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Database Management System                                  4
Dr M P Singh

Thermodynamics                                              4
Dr Ajay Giri

Digital Electronics                                         4
Prof Ashish Kumar Suman


COURSENAME                                            CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Power System                                                3
Prof Ashish Kumar Suman

Advanced Java                                               4
VICKY ANAND

Microprocessor                                              3
Dr AJAY KUMAR


COURSENAME                                            CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Thermal Engineering                                         4
Dr Prity Kumari Choudhary

Digital Signal Processing                                   4
Puja Rani

Structural Engineering                                      3
Pankaj Kumar


COURSENAME                                            CREDITS
-------------------------------------------------- ----------
NAME
--------------------------------------------------
Cloud Computing                                             4
Arun Kumar


10 rows selected.

SQL> CLEAR BREAK;
breaks cleared
SQL>  CLEAR COLUMNS;
columns cleared
SQL>  SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN CourseName FORMAT A25;
SQL> COLUMN Name FORMAT A25;
SQL> SELECT C.CourseName,C.Credits,F.Name FROM Course C
  2  INNER JOIN Faculty F ON C.FacultyID=F.FacultyID;

COURSENAME                   CREDITS NAME
------------------------- ---------- -------------------------
Database Management Syste          4 Dr M P Singh
m

Thermodynamics                     4 Dr Ajay Giri
Digital Electronics                4 Prof Ashish Kumar Suman
Power System                       3 Prof Ashish Kumar Suman
Advanced Java                      4 VICKY ANAND
Microprocessor                     3 Dr AJAY KUMAR
Thermal Engineering                4 Dr Prity Kumari Choudhary
Digital Signal Processing          4 Puja Rani
Structural Engineering             3 Pankaj Kumar
Cloud Computing                    4 Arun Kumar

10 rows selected.

SQL> CLEAR BREAK;
breaks cleared
SQL>  CLEAR COLUMNS;
columns cleared
SQL>   SET LINESIZE 200;
SQL>  SET PAGESIZE 100;
SQL> COLUMN CourseName FORMAT A25;
SQL>  COLUMN Name FORMAT A25;
SQL>  SELECT C.CourseName,C.Credits,F.Name FROM Course C
  2   INNER JOIN Faculty F ON C.FacultyID=F.FacultyID;

COURSENAME                   CREDITS NAME
------------------------- ---------- -------------------------
Database Management Syste          4 Dr M P Singh
m

Thermodynamics                     4 Dr Ajay Giri
Digital Electronics                4 Prof Ashish Kumar Suman
Power System                       3 Prof Ashish Kumar Suman
Advanced Java                      4 VICKY ANAND
Microprocessor                     3 Dr AJAY KUMAR
Thermal Engineering                4 Dr Prity Kumari Choudhary
Digital Signal Processing          4 Puja Rani
Structural Engineering             3 Pankaj Kumar
Cloud Computing                    4 Arun Kumar

10 rows selected.

SQL> SELECT C.CourseName FROM Course C
  2  INNER JOIN Faculty F ON C.FacultyID=F.FacultyID WHERE F.FacultyID='101';

COURSENAME
-------------------------
Database Management Syste
m


SQL> CLEAR BREAK;
breaks cleared
SQL> CLEAR COLUMNS;
columns cleared
SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN Name FORMAT A25;
SQL> COLUMN Designation FORMAT A20;
SQL> COLUMN CourseName FORMAT A30;
SQL> SELECT F.Name,F.Designation,C.CourseName FROM Faculty F
  2  INNER JOIN Course C ON F.FacultyID=C.FacultyID;

NAME                      DESIGNATION          COURSENAME
------------------------- -------------------- ------------------------------
Dr Ajay Giri              Professor            Thermodynamics
Prof Ashish Kumar Suman   Professor            Digital Electronics
Dr M P Singh              Professor            Database Management System
Prof Ashish Kumar Suman   Professor            Power System
VICKY ANAND               Professor            Advanced Java
Dr AJAY KUMAR             Professor            Microprocessor
Dr Prity Kumari Choudhary Professor            Thermal Engineering
Puja Rani                 Professor            Digital Signal Processing
Pankaj Kumar              Professor            Structural Engineering
Arun Kumar                Professor            Cloud Computing

10 rows selected.

SQL> CLEAR BREAK;
breaks cleared
SQL> CLEAR COLUMNS;
columns cleared
SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> COLUMN Name FORMAT A20;
SQL> COLUMN CourseName FORMAT A30;
SQL> COLUMN Semester FORMAT 999;
SQL> COLUMN Grade FORMAT A10;
SQL> COLUMN DepartmentID FORMAT A10;
SQL> COLUMN DepartmentName FORMAT A20;
SQL> COLUMN Designation FORMAT A20;
SQL> SELECT S.Name,C.CourseName FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID;

NAME                 COURSENAME
-------------------- ------------------------------
Milli                Thermodynamics
Mona                 Digital Electronics
Nidhi                Database Management System
Jyoti                Power System

SQL> SELECT S.Name,C.CourseName,E.Semester FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID;

NAME                 COURSENAME                     SEMESTER
-------------------- ------------------------------ --------------------
Milli                Thermodynamics                 Sem-5
Mona                 Digital Electronics            Sem-5
Nidhi                Database Management System     Sem-5
Jyoti                Power System                   Sem-5

SQL> SELECT S.Name,C.CourseName,E.Grade FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID WHERE E.Semester='4';

no rows selected

SQL> SELECT C.CourseName FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID WHERE S.StudentID='1';

COURSENAME
------------------------------
Database Management System

SQL> SELECT S.Name,S.DepartmentID,C.CourseName FROM Student S
  2  INNER JOIN Course C ON S.DepartmentID=C.DepartmentID;

NAME                 DEPARTMENTID COURSENAME
-------------------- ------------ ------------------------------
Mona                   ########## Thermodynamics
Jyoti                  ########## Digital Electronics
Nidhi                  ########## Database Management System
Mona                   ########## Power System
Nidhi                  ########## Advanced Java
Milli                  ########## Microprocessor
Mona                   ########## Thermal Engineering
Jyoti                  ########## Digital Signal Processing
Raman                  ########## Structural Engineering
Shubham                ########## Cloud Computing

10 rows selected.

SQL> SELECT D.DepartmentName,C.CourseName FROM Department D
  2  INNER JOIN Course C ON D.DepartmentID=C.DepartmentID;

DEPARTMENTNAME       COURSENAME
-------------------- ------------------------------
Mechanical Engineeri Thermodynamics
ng

Electronics and Comm Digital Electronics
unication Engineerin
g

Computer Science and Database Management System
 Engineering

Mechanical Engineeri Power System
ng

Computer Science and Advanced Java
 Engineering

Electrical Engineeri Microprocessor
ng

Mechanical Engineeri Thermal Engineering
ng

Electronics and Comm Digital Signal Processing
unication Engineerin
g

CIVIL ENGINEERING wi Structural Engineering
th COMPUTER APPLICAT
ION

IT                   Cloud Computing

10 rows selected.

SQL> SELECT F.Name,D.DepartmentName FROM Faculty F
  2  INNER JOIN Department D ON F.DepartmentID=D.DepartmentID;

NAME                 DEPARTMENTNAME
-------------------- --------------------
Dr M P Singh         Computer Science and
                      Engineering

VICKY ANAND          Computer Science and
                      Engineering

MITHILESH KUMAR      Electrical Engineeri
                     ng

Dr Ajay Giri         Mechanical Engineeri
                     ng

Prof Ashish Kumar Su Electronics and Comm
man                  unication Engineerin
                     g

Dr AJAY KUMAR        Electrical and Elect
                     ronics  Engineering

Dr Prity Kumari Chou 3D Animation and Gra
dhary                phics

Puja Rani            COMPUTER SCIENCE ENG
                     INEERING(AI )

Pankaj Kumar         CIVIL ENGINEERING wi
                     th COMPUTER APPLICAT
                     ION

Arun Kumar           IT

10 rows selected.

SQL> SELECT S.Name,C.CourseName FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID WHERE S.DepartmentID='1';

NAME                 COURSENAME
-------------------- ------------------------------
Nidhi                Database Management System

SQL> SELECT S.Name,CourseName FROM Student S
  2  INNER JOIN Enrollment E ON S.StudentID=E.StudentID
  3  INNER JOIN Course C ON E.CourseID=C.CourseID ORDER BY S.Name ASC;

NAME                 COURSENAME
-------------------- ------------------------------
Jyoti                Power System
Milli                Thermodynamics
Mona                 Digital Electronics
Nidhi                Database Management System

SQL> SELECT F.Name,C.CourseName,C.Credits FROM Faculty F
  2  INNER JOIN Course C ON F.FacultyID=C.FacultyID ORDER BY C.Credits DESC;

NAME                 COURSENAME                        CREDITS
-------------------- ------------------------------ ----------
Dr Ajay Giri         Thermodynamics                          4
Prof Ashish Kumar Su Digital Electronics                     4
man

Dr M P Singh         Database Management System              4
VICKY ANAND          Advanced Java                           4
Puja Rani            Digital Signal Processing               4
Dr Prity Kumari Chou Thermal Engineering                     4
dhary

Arun Kumar           Cloud Computing                         4
Dr AJAY KUMAR        Microprocessor                          3
Pankaj Kumar         Structural Engineering                  3
Prof Ashish Kumar Su Power System                            3
man


10 rows selected.

SQL> SELECT C.CourseName,COUNT(E.StudentID) AS TotalStudents FROM Course C
  2  INNER JOIN Enrollment E ON C.CourseID=E.CourseID GROUP BY C.CourseName;

COURSENAME                     TOTALSTUDENTS
------------------------------ -------------
Thermodynamics                             1
Digital Electronics                        1
Database Management System                 1
Power System                               1

SQL> SELECT F.Name,COUNT(C.CourseID) AS TotalCourses FROM Faculty F
  2  INNER JOIN Course C ON F.FacultyID=C.FacultyID GROUP BY F.Name;

NAME                 TOTALCOURSES
-------------------- ------------
Dr Ajay Giri                    1
Prof Ashish Kumar Su            2
man

Dr M P Singh                    1
VICKY ANAND                     1
Dr AJAY KUMAR                   1
Dr Prity Kumari Chou            1
dhary

Puja Rani                       1
Pankaj Kumar                    1
Arun Kumar                      1

9 rows selected.

SQL> SELECT D.DepartmentName,COUNT(S.StudentID) AS TotalStudents FROM Department D
  2  INNER JOIN Student S ON D.DepartmentID=S.DepartmentID GROUP BY D.DepartmentName;

DEPARTMENTNAME       TOTALSTUDENTS
-------------------- -------------
Computer Science and             1
 Engineering

Electrical Engineeri             1
ng

Mechanical Engineeri             1
ng

Electronics and Comm             1
unication Engineerin
g

Civil Engineering                1
Electrical and Elect             1
ronics  Engineering

3D Animation and Gra             1
phics

COMPUTER SCIENCE ENG             1
INEERING(AI )

CIVIL ENGINEERING wi             1
th COMPUTER APPLICAT
ION

IT                               1

10 rows selected.

SQL> SELECT C.CourseName,MAX(E.Grade) AS MaxGrade FROM Course C
  2  INNER JOIN Enrollment E ON C.CourseID=E.CourseID GROUP BY C.CourseName;

COURSENAME                     MAXGR
------------------------------ -----
Thermodynamics                 A
Digital Electronics            B+
Database Management System     A
Power System                   B

SQL>
