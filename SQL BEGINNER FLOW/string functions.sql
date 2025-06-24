#string functions
#length
SELECT length('skyfall');
select first_name, length(first_name)
from employee_demographics
order by 2;

# upper
SELECT UPPER('skyfall');
select first_name, upper(first_name)
from employee_demographics
order by 2;

# lower
SELECT lower('SKYFALL');
select first_name, lower(first_name)
from employee_demographics
order by 2;

#TRIM
select trim('           sky       ');
select ltrim('           sky       ');
select rtrim('           sky       ');

#substring
select first_name, 
left(first_name, 4), 
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) AS birth_month
from employee_demographics;

#replace
select first_name, replace(first_name, 'a','z')
from employee_demographics;

#locate
select locate('x','Alexander')

select first_name, locate('An',first_name)
from employee_demographics;

#concat
select first_name, last_name,
concat(first_name, '  ', last_name)
from employee_demographics;