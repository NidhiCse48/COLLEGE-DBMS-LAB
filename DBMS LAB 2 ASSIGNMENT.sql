SQL*Plus: Release 21.0.0.0.0 - Production on Sun Feb 22 23:26:56 2026
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Sun Feb 22 2026 23:00:17 +05:30

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> CREATE TABLE Department(
  2  DepartmentID INT PRIMARY KEY,
  3  DepartmentName VARCHAR(50),
  4  OfficeLocation VARCHAR(50)
  5  );
CREATE TABLE Department(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENTID                              NOT NULL NUMBER(38)
 DEPARTMENTNAME                                     VARCHAR2(50)
 OFFICELOCATION                                     VARCHAR2(50)

SQL> CREATE TABLE Student(
  2  StudentID INT PRIMARY KEY,
  3  Name VARCHAR2(50),
  4  Gender VARCHAR2(10),
  5  DateOfBirth DATE,
  6  ContactNumber VARCHAR2(15),
  7  DepartmentID INT,
  8  FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
  9  );
CREATE TABLE Student(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DESC Student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENTID                                 NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 GENDER                                             VARCHAR2(10)
 DATEOFBIRTH                                        DATE
 CONTACTNUMBER                                      VARCHAR2(15)
 DEPARTMENTID                                       NUMBER(38)
 CITY                                               VARCHAR2(30)
 SEMESTER                                           NUMBER(38)

SQL> CREATE TABLE Faculty(
  2  FacultyID INT PRIMARY KEY,
  3  Name VARCHAR(50),
  4  Designation VARCHAR(50),
  5  DepartmentID INT,
  6   FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
  7  );
CREATE TABLE Faculty(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DESC Faculty;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTYID                                 NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(50)
 DESIGNATION                                        VARCHAR2(50)
 EMAIL                                              VARCHAR2(50)
 DEPARTMENTID                                       NUMBER(38)

SQL> CREATE TABLE Course(
  2  CourseID INT PRIMARY KEY,
  3  CourseName VARCHAR2(50),
  4  Credits INT,
  5  DepartmentID INT,
  6  FacultyID INT,
  7   FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID),
  8    FOREIGN KEY(FacultyID) REFERENCES Faculty(FacultyID)
  9  );
CREATE TABLE Course(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DESC Course;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                  NOT NULL NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)
 DEPARTMENTID                                       NUMBER(38)
 FACULTYID                                          NUMBER(38)

SQL> CREATE TABLE Enrollment(
  2  EnrollmentID INT PRIMARY KEY,
  3  StudentID INT,
  4  CourseID INT,
  5  Semester VARCHAR2(20),
  6  Grade VARCHAR2(5),
  7   FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
  8  );
CREATE TABLE Enrollment(
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DESC Enrollment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENROLLMENTID                              NOT NULL NUMBER(38)
 STUDENTID                                          NUMBER(38)
 COURSEID                                           NUMBER(38)
 SEMESTER                                           VARCHAR2(20)
 GRADE                                              VARCHAR2(5)

SQL>