<<<<<<< HEAD
# 🎓 Task 5: SQL Joins - Student-Course Management

This project demonstrates various SQL JOIN operations using a student-course relational schema. The goal is to explore different types of joins including INNER, LEFT, RIGHT, FULL OUTER, CROSS, and SELF JOIN using real-world student and course data.
=======
# 📊 Task 4: Aggregate Functions and Grouping

## 🧠 Objective
To demonstrate the use of SQL aggregate functions and grouping techniques to summarize and analyze employee data.
>>>>>>> bd8ad3b1d2db043bbadddb1d386f131d576b02f1

---

## 🗂️ Tables Used

### 1. Students
| Column       | Type    | Description             |
|--------------|---------|-------------------------|
| student_id   | INT     | Primary Key             |
| student_name | VARCHAR | Name of the student     |
| age          | INT     | Age of the student      |

### 2. Courses
| Column       | Type    | Description                          |
|--------------|---------|--------------------------------------|
| course_id    | INT     | Primary Key                          |
| student_id   | INT     | Foreign Key (references Students)    |
| course_name  | VARCHAR | Name of the course                   |
| department   | VARCHAR | Department offering the course       |

---

## 🔗 SQL Joins Implemented

- ✅ INNER JOIN: Students with their enrolled courses and departments
- ✅ LEFT JOIN: All students (even if not enrolled in a course)
- ✅ RIGHT JOIN: All courses (even if no student is enrolled)
- ✅ FULL OUTER JOIN: All students and all courses, matched when possible
- ✅ SELF JOIN: Students with the same age

---

## 🧠 What I Learned

<<<<<<< HEAD
- The importance of choosing the right JOIN to avoid data loss
- How to handle unmatched data using OUTER JOINs
- Differences between LEFT, RIGHT, and FULL OUTER JOIN
- How to simulate FULL OUTER JOIN using UNION in MySQL
- Practical use of SELF JOIN for comparing within the same table
- How CROSS JOIN can result in a Cartesian product and its implications
=======
| File Name     | Description                                 |
|employees.sql|Contains commands used to create relevant table|
| Task_04.sql   | Contains SQL commands to manipulate and analyze data |
| README.md     | Project overview and execution instructions |
>>>>>>> bd8ad3b1d2db043bbadddb1d386f131d576b02f1


