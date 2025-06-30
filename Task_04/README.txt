# 🎓 Task 5: SQL Joins - Student-Course Management

This project demonstrates various SQL JOIN operations using a student-course relational schema. The goal is to explore different types of joins including INNER, LEFT, RIGHT, FULL OUTER, CROSS, and SELF JOIN using real-world student and course data.

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

- The importance of choosing the right JOIN to avoid data loss
- How to handle unmatched data using OUTER JOINs
- Differences between LEFT, RIGHT, and FULL OUTER JOIN
- How to simulate FULL OUTER JOIN using UNION in MySQL
- Practical use of SELF JOIN for comparing within the same table
- How CROSS JOIN can result in a Cartesian product and its implications


