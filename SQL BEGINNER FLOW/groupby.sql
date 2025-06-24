SELECT*
FROM employee_demographics ;

#Groupby
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

#orderby 
SELECT*
FROM employee_demographics
ORDER BY first_name DESC;

SELECT*
FROM employee_demographics 
ORDER BY gender, age DESC;

SELECT*
FROM employee_demographics 
ORDER BY  5, 4;