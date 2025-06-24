#triggersand events

select *
from employee_demographics;

select*
from employee_salary;

SELECT MAX(employee_id) + 1 AS next_id FROM employee_salary;
SELECT MAX(employee_id) + 1 AS next_id FROM employee_demographics;


DELIMITER $$
create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics(employee_id, first_name ,last_name)
    values (new.employee_id, new.first_name ,new.last_name);
end $$
DELIMITER ;


INSERT INTO employee_salary (employee_id, first_name ,last_name, occupation, salary, dept_id)
VALUES (13, 'Ian', 'Nyamai', 'Chef', 100000, NULL);

#events
 

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE 
	FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER;

