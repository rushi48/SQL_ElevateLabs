-- -------------------------------------------------
-- Task 5: SQL Joins (Inner, Left, Right, Full)
-- -------------------------------------------------


create database Students;
use students;

drop table if exists Students;
drop table if exists courses;

-- Create students Table
CREATE TABLE students (
    Student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(100),
    department VARCHAR(100),
    FOREIGN KEY (student_id)
        REFERENCES Students (student_id)
);

-- Insert Data Into created Tables

insert into students (student_id , student_name ,age)values
(1 , 'Alice',21),
(2 , 'Bob',20),
(3 , 'Charlie',19),
(4 , 'David',21);


insert into courses (course_id , student_id,course_name,department) values
(101 , 1 ,'Maths','Science'),
(102 , 3 ,'Chemistry','Science'),
(103 , 2 ,'Economics','Commerce'),
(104 , 4 ,'Biology','Science');



-- INNER JOIN:students with their courses and departments

SELECT 
    s.student_id, s.student_name, c.course_name, c.department
FROM
    Students s
        INNER JOIN
    Courses c ON s.student_id = c.student_id;


-- LEFT JOIN: All students, with courses (if any)

SELECT 
    s.student_id, s.student_name, c.course_name, c.department
FROM
    Students s
        LEFT JOIN
    Courses c ON s.student_id = c.student_id;


-- RIGHT JOIN: All courses, with student info (if any)
SELECT 
    s.student_id, s.student_name, c.course_name, c.department
FROM
    Students s
        RIGHT JOIN
    Courses c ON s.student_id = c.student_id;

-- FULL OUTER JOIN: All students and courses, match when possible
SELECT 
    s.student_id, s.student_name, c.course_name, c.department
FROM
    Students s
        LEFT JOIN
    Courses c ON s.student_id = c.student_id 
UNION SELECT 
    s.student_id, s.student_name, c.course_name, c.department
FROM
    Students s
        RIGHT JOIN
    Courses c ON s.student_id = c.student_id;


-- SELF JOIN: Find pairs of students with the same age
SELECT 
    A.student_name AS Student1,
    B.student_name AS Student2,
    A.age
FROM
    Students A
        JOIN
    Students B ON A.age = B.age
        AND A.student_id < B.student_id;