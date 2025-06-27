-- Create the employees table and insert sample data
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    gender VARCHAR(10)
);

INSERT INTO employees (id, name, department, salary, gender) VALUES
(1, 'Alice', 'sales', 45000, 'Female'),
(2, 'Bob', 'marketing', 38000, 'Male'),
(3, 'Carol', null, 50000, 'Male'),
(4, 'Diana', 'Marketing', 60000, 'Female'),
(5, 'alice', 'HR', 45000, 'Female'),
(6, 'Frank', 'Engineering', 70000, 'Male'),
(7, 'Grace', 'Marketing', 58000, 'Female'),
(8, 'Hank', 'HR', 48000, 'Male'),
(9, 'Ivy', 'Engineering', 77000, 'Female'),
(10, 'Jake', 'Marketing', 61000, 'Male');