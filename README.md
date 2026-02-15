# COLLEGE-DBMS-LAB ASSIGNMENT
This repository contains DBMS lab assignments and SQL queries implemented using Oracle SQL.it includes data retrieval, conditional queries,sorting,limiting results, and computed outputs.
# COLLEGE DBMS LAB

#  DBMS Lab-1 Assignment  
## SQL – DDL & DML Operations

###  Objective
To understand and implement basic SQL operations including database creation, table creation, data insertion, updating, deletion, and data retrieval.

---

## Database: CollegeDB

###  Tables Created

1. Student
   - RollNo (Primary Key)
   - Name
   - Dept
   - Age
   - Phone
   - City
   - Semester

2. Course
   - CourseID (Primary Key)
   - CourseName
   - Credits

---

## Tasks Performed

###  Part A – DDL (Data Definition Language)
- Create database `CollegeDB`
- Create `Student` table
- Create `Course` table
- Add new columns (City, Semester)
- Rename column (Phone → MobileNo)
- Drop table `Course`

###  Part B – DML (Data Manipulation Language)
- Insert 5 student records
- Display all records
- Display selected columns
- Apply conditions using WHERE
- Update records
- Increase age by 1 year
- Delete specific record
- Delete all records (table retained)

---

##  SQL Concepts Used
✔ CREATE  
✔ ALTER  
✔ DROP  
✔ INSERT  
✔ SELECT  
✔ UPDATE  
✔ DELETE  
✔ WHERE clause  

---

##  Submission Includes
- SQL file containing all queries
- Output screenshots (if required)

---

# DBMS-LAB 2 Assignment 

##  Ojective
To understand Entity–Relationship (ER) modeling and convert it into relational tables and SQL queries.

---

# Entities Overview

##  Department
- DepartmentID (Primary Key)
- DepartmentName
- OfficeLocation

* One department can have many students, faculty members, and courses.

---

##  Course
- CourseID (Primary Key)
- CourseName
- Credits
- DepartmentID (Foreign Key)
- FacultyID (Foreign Key)

 * A course belongs to one department.  
* Many students can enroll in the same course.

---

## Student
- StudentID (Primary Key)
- Name
- DateOfBirth
- Gender
- ContactNumber
- DepartmentID (Foreign Key)

* A student belongs to one department.  
* A student can enroll in multiple courses.

---

##  Faculty
- FacultyID (Primary Key)
- Name
- Designation
- Email
- DepartmentID (Foreign Key)

* A faculty member works in one department.  
*A faculty member can teach multiple courses.

---

## Enrollment
- StudentID (Foreign Key)
- CourseID (Foreign Key)
- Semester
- Grade

. Represents a Many-to-Many relationship between Student and Course.  
. Implemented as a separate table.

---

# ER Diagram Requirements

The ER diagram clearly shows:
- Entities
- Attributes
- Primary Keys
- Relationships
- Cardinality (1–1, 1–M, M–N)
-  
✔ Created using draw.io (diagrams.net)

---

# Relational Tables

Each table includes:
- Table Name
- Attributes
- Primary Key
- Foreign Keys

---

# SQL Implementation

Includes:
- CREATE TABLE statements
- Proper Data Types
- Primary Key Constraints
- Foreign Key Constraints

---

# Submission Files

- ER Diagram (Image/PDF)
- SQL File (All CREATE TABLE queries)

---
#  DBMS-Lab 3 Assignment  
## College Database – Data Collection & Insertion

###  Objective
To implement a real-world College Database using ER modeling and SQL queries with authentic data sources.

---

##  Database Schema Includes

### 1. Department
- DepartmentID (PK)
- DepartmentName
- OfficeLocation

### 2. Faculty
- FacultyID (PK)
- Name
- Designation
- Email
- DepartmentID (FK)

### 3. Course
- CourseID (PK)
- CourseName
- Credits
- DepartmentID (FK)
- FacultyID (FK)

### 4. Student
- StudentID (PK)
- Name
- DateOfBirth
- Gender
- ContactNumber
- DepartmentID (FK)

### 5. Enrollment
- StudentID (FK)
- CourseID (FK)
- Semester
- Grade  
(Represents Many-to-Many relationship)

---

## 💻 SQL Work Completed
✔ CREATE TABLE queries  
✔ INSERT INTO queries (Minimum 10 records in Student, Course, Enrollment)  
✔ Foreign key constraints applied  
✔ Data verification using SELECT queries  

---

## 📂 Submission Includes
- SQL file (All CREATE + INSERT queries)
- ER Diagram (created using draw.io)
- Screenshots of successful execution

---
#  DBMS Lab 4 Assignment  – Data Retrieval Using SQL

## Objective
To perform data retrieval operations using SQL SELECT queries without modifying the database structure.

This lab focuses on:
- Column Aliases (AS)
- WHERE clause filtering
- Sorting (ORDER BY)
- Limiting results (LIMIT)
- Derived / Computed output
- Working with dates

---

#  Database Tables Used

- Student
- Faculty
- Course
- Enrollment

---

#  Lab Tasks Covered

## Part A: Basic Data Display
- Display all columns using aliases
- Rename selected columns
- Show readable column headers

##  Part B: Conditional Data Display (WHERE)
- Filter by DepartmentID
- Filter by Gender
- Filter by Designation
- Filter by Credits
- Filter using Date of Birth
- Filter by Semester

## Part C: Sorting & Limiting Results
- Sort records (ASC / DESC)
- Display first 3 or 5 records
- Sort by Name, DOB, Credits, Designation

##  Part D: Derived / Computed Output
- Calculate Age using DOB
- Increase Credits in output
- Rename Grade as Final_Grade
- Extract Year from DOB
- Extract email domain from Faculty Email

---

#  SQL Concepts Used

✔ SELECT  
✔ AS (Column Alias)  
✔ WHERE  
✔ ORDER BY  
✔ LIMIT  
✔ Date Functions  
✔ Derived Columns  

---

# Submission Includes

- SQL file containing all SELECT queries
- Screenshots of query execution
- Verified outputs for all tasks

---
