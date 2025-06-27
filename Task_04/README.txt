# 📊 Task 4: Aggregate Functions and Grouping

## 🧠 Objective
To demonstrate the use of SQL aggregate functions and grouping techniques to summarize and analyze employee data.

---

## 🧰 Tools Used
- MySQL Workbench 
- GitHub

---

## 🧪 Database Structure

Table: `employees`

| Column      | Type         | Description                     |
|-------------|--------------|---------------------------------|
| employeeId  | INT          | Primary Key                     |
| name        | VARCHAR(100) | Employee name                   |
| department  | VARCHAR(50)  | Department of the employee      |
| salary      | INT          | Salary of the employee          |
| Gender      | VARCHAR(50)  | Gender (Male/Female)            |

The structure is modified with additional columns and rows for this task.

---

## 📁 Files Included

| File Name     | Description                                 |
|---------------|---------------------------------------------|
| Task_04.sql   | Contains SQL commands to manipulate and analyze data |
| README.md     | Project overview and execution instructions |

---

## 📋 Key SQL Features Used

- COUNT()
- SUM()
- AVG()
- ROUND()
- GROUP BY
- HAVING
- ORDER BY
- DISTINCT

---

## 📊 Sample Queries Included

```sql
-- Total number of employees
SELECT COUNT(*) AS Total_employees FROM employees;

-- Average salary per department
SELECT department, ROUND(AVG(salary), 2) AS Avg_Salary
FROM employees
GROUP BY department;

-- Employees grouped by gender
SELECT gender, COUNT(*) AS Gender_Count
FROM employees
GROUP BY Gender;

-- Department with highest average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;
