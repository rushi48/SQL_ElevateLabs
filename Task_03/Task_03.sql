

-- SQL Developer Internship - Task 3

-- Task 3: Writing Basic SELECT Queries


use world;

SELECT 
    *
FROM
    city;


-- ---Select specific columns
SELECT 
    name, district, population
FROM
    city;

-- Data Filtering
SELECT 
    *
FROM
    city
WHERE
    population > 200000;

-- To view which languages are mostly used 
SELECT 
    *
FROM
    countrylanguage;

SELECT 
    *
FROM
    countrylanguage
WHERE
    Percentage BETWEEN 10 AND 50;

-- Most used languages
SELECT 
    *
FROM
    countrylanguage
ORDER BY Percentage DESC
LIMIT 5;

-- Cities with most population
SELECT 
    name, population
FROM
    country
ORDER BY population DESC
LIMIT 10;

-- Independence years of countries
SELECT DISTINCT
    name, indepyear
FROM
    country;

