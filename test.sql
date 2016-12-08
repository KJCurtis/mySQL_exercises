USE employees;

-- first names Irena, Vidya, and Maya - 709 rows
select first_name, last_name from employees where first_name IN ('Irena', 'Vidya', 'Maya');

-- last names starting with 'E' - 7330 rows

select first_name, last_name from employees where last_name LIKE 'E%';

-- Employees hired in the 90s — 135,214 rows.

select first_name, last_name, hire_date from employees where hire_date like '199%';

-- Employees born on Christmas — 842 rows.

select first_name, last_name, birth_date from employees where birth_date like "%12-24";

-- Employees with a 'q' in their last name — 1,873 rows.

select first_name, last_name from employees where last_name like '%q%';

