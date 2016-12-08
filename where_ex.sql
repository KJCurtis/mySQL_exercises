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

-- 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.

select first_name, last_name from employees where first_name like 'Irena'
                                                  or first_name like 'Vidya'
                                                  or first_name like 'Maya';

-- everybody with those names who is also male — 441 rows.

select first_name, last_name, gender from employees where first_name like 'Irena'
                                                          or first_name like 'Vidya'
                                                          or first_name like 'Maya'
                                                             and gender like 'M';

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.

select first_name , last_name from employees where last_name like 'e%'
                                                   or last_name like '%e';

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.

select first_name , last_name from employees where last_name like 'e%'
                                                   and last_name like '%e';

-- Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT first_name, last_namdde, birth_date, hire_date from employees where hire_date like '199%'
                                                                         and birth_date like '%12-24';

-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.

SELECT first_name, last_name from employees where last_name like '%Q%' and last_name not LIKE '%qu%';
