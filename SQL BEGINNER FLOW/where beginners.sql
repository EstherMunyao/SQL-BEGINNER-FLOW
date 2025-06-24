SELECT*
FROM employee_salary
WHERE first_name = "Leslie";

SELECT*
FROM employee_salary
WHERE salary > 50000;

SELECT*
FROM employee_demographics
WHERE gender != "Female";

SELECT*
FROM employee_demographics
WHERE birth_date > '1985-01-01' AND gender = 'male'; 

SELECT*
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

#like statement
SELECT*
FROM employee_demographics
WHERE first_name LIKE '%a%' ;


SELECT*
FROM employee_demographics
WHERE first_name LIKE 'a__' ;
