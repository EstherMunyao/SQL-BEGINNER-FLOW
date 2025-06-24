#stored procedures

select*
from employee_salary
where salary >= 5000;

#one procedure
create procedure large_salaries()
select*
from employee_salary
where salary >= 5000;

call large_salaries();

#more procedures 
DELIMITER $$
create procedure large_salaries2()
BEGIN
	select*
	from employee_salary
	where salary >= 5000;
	select*
	from employee_salary
	where salary >= 10000;
END $$
DELIMITER ;

call large_salaries2();

#PARAMETER
DELIMITER $$
create procedure large_salaries4(chefin INT)
BEGIN
	select salary
	from employee_salary
    where employee_id = chefin
	;
END $$
DELIMITER ;

call large_salaries4(1);