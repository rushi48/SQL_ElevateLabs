-- ------------------------
-- SQL Internship Task - 4 Aggregate Functions and Grouping
-- ------------------------

-- ---------------------------------------------------------------------------------------
SELECT 
    *
FROM
    employees;

alter table employees add column Gender varchar (50) ;

alter table employees drop column ManagerID;

insert into employees (employeeId , name , department , salary , Gender) values
(4, 'Diana', 'Marketing', 60000, 'Female'),
(6, 'Frank', 'Engineering', 70000, 'Male'),
(7, 'Grace', 'Marketing', 58000, 'Female'),
(8, 'Hank', 'HR', 48000, 'Male'),
(9, 'Ivy', 'Engineering', 77000, 'Female'),
(10, 'Jake', 'Marketing', 61000, 'Male');

UPDATE employees 
SET 
    Gender = 'Female'
WHERE
    EmployeeID = 1;

UPDATE employees 
SET 
    Gender = 'male'
WHERE
    EmployeeID = 2;
    
UPDATE employees 
SET 
    Gender = 'Female'
WHERE
    EmployeeID = 3;
    
UPDATE employees 
SET 
    Gender = 'Female'
WHERE
    EmployeeID = 5;
    
-- -----------------------------------------------------------------------------------------

-- Total number of employees
SELECT 
    COUNT(*) AS Total_employees
FROM
    employees;

-- Total Salary paid by each department
SELECT 
    department, SUM(salary) AS Total_salary
FROM
    employees
GROUP BY department;

-- Average salary per department
SELECT 
    department, ROUND(AVG(salary), 2) AS Avg_Salary
FROM
    employees
GROUP BY department;

-- Count Of employees by Gender
SELECT 
    gender, COUNT(*) AS Gender_Count
FROM
    employees
GROUP BY Gender;

 
-- Department with highest Avg Salary
SELECT 
    department, AVG(salary) AS avg_salary
FROM
    employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;


-- Count employees in departments having more than 2 people
SELECT 
    department, COUNT(*) AS emp_count
FROM
    employees
GROUP BY department
HAVING COUNT(*) > 2;


-- Count of unique genders
SELECT 
    COUNT(DISTINCT gender) AS distinct_genders
FROM
    employees;
