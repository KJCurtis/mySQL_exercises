use employees;
-- List the first 10 distinct last name sorted in descending order.
select last_name
from employees
GROUP BY last_name DESC
limit 10;


SELECT *
from employees
where hire_date like "199%"
and birth_date like "%12-25"
limit 5
offset 45;
