SELECT*
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, "old_man" AS Label
FROM employee_demographics
WHERE age > 40 AND gender = "Male"
UNION
SELECT first_name, last_name, "old_lady" AS Label
FROM employee_demographics
WHERE age > 40 AND gender = "Female"
UNION
SELECT first_name, last_name, "Highly_paid" AS Label
FROM employee_salary
WHERE salary > 70000 
ORDER BY first_name, last_name;