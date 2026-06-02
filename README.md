# College Management System (MySQL)

## Overview

This project is a relational database management system for a college. It is designed to manage students, courses, faculty members, and enrollments using MySQL.

The project demonstrates practical database design and SQL concepts including table creation, constraints, joins, aggregate functions, subqueries, views, indexes, transactions, and window functions.

---

## Features

- Student Management
- Course Management
- Faculty Management
- Enrollment Tracking
- Data Validation using Constraints
- Complex Query Operations
- Reporting and Analysis

---

## Database Structure

### Tables

#### Students
Stores student information.

| Column | Description |
|----------|-------------|
| student_id | Unique student ID |
| name | Student name |
| email | Student email |
| gender | Student gender |
| age | Student age |
| city | Student city |

#### Courses
Stores course details.

| Column | Description |
|----------|-------------|
| course_id | Unique course ID |
| course_name | Course name |
| credits | Credit hours |

#### Faculty
Stores faculty information.

| Column | Description |
|----------|-------------|
| faculty_id | Unique faculty ID |
| faculty_name | Faculty name |
| department | Department name |

#### Enrollments
Stores enrollment and marks information.

| Column | Description |
|----------|-------------|
| enrollment_id | Unique enrollment ID |
| student_id | Student reference |
| course_id | Course reference |
| semester | Semester |
| marks | Student marks |

---

## Concepts Implemented

### DDL (Data Definition Language)

- CREATE DATABASE
- CREATE TABLE
- ALTER TABLE
- DROP COLUMN

### Constraints

- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- CHECK

### DML (Data Manipulation Language)

- INSERT
- UPDATE
- DELETE

### Query Operations

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIMIT

### Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### Advanced SQL

- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- SELF JOIN
- SUBQUERIES
- CASE Statements
- Views
- Indexes
- Transactions
- Window Functions (RANK)

---

## Sample Queries

### Students Scoring Above Average Marks

```sql
SELECT *
FROM Enrollments
WHERE marks >
(
    SELECT AVG(marks)
    FROM Enrollments
);
```

### Student-Course Report

```sql
SELECT s.name,
       c.course_name,
       e.marks
FROM Students s
INNER JOIN Enrollments e
ON s.student_id = e.student_id
INNER JOIN Courses c
ON e.course_id = c.course_id;
```

### Student Ranking

```sql
SELECT
    s.name,
    AVG(e.marks) AS average_marks,
    RANK() OVER(ORDER BY AVG(e.marks) DESC) AS student_rank
FROM Students s
JOIN Enrollments e
ON s.student_id = e.student_id
GROUP BY s.student_id;
```

---

## Project Files

```
college-management-system-mysql/
│
├── README.md
├── schema.sql
├── insert_data.sql
├── queries.sql
├── views.sql
├── indexes.sql
├── transactions.sql
├── advanced_queries.sql
└── screenshots/
```

---

## How to Run

1. Clone the repository.

```bash
git clone <repository-url>
```

2. Open MySQL Workbench.

3. Execute:

```sql
schema.sql
```

4. Execute:

```sql
insert_data.sql
```

5. Run queries from:

```sql
queries.sql
advanced_queries.sql
```

---

## Learning Outcomes

Through this project, I gained hands-on experience with:

- Relational Database Design
- Database Normalization
- SQL Query Writing
- Database Constraints
- Data Analysis using SQL
- Transaction Management
- Query Optimization using Indexes
- Reporting with Window Functions

---

## Author

Developed as a practical MySQL project to strengthen database management and SQL skills.
