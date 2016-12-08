use employees;

-- show 'Irena', 'Vidya', 'Maya' sort by first then last name
select first_name, last_name
from employees
where first_name
IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name ASC;

-- same as above just last name sorted first

select first_name, last_name
from employees
where first_name
IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name ASC;
