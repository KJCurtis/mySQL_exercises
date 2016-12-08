use employees;

-- titles unique
select DISTINCT title from titles;

-- titles unique sorted
select DISTINCT title from titles ORDER BY title ASC;

--  Find your query for unique employees whose last names start and end with 'E'
select last_name
from employees
where last_name
like "e%"
and last_name like "%e"
GROUP BY last_name asc;


-- unique combinations of first name and last name where the last name starts and ends with the letter e
select first_name, last_name
from employees
where last_name
      like "e%"
      and last_name like "%e"
GROUP BY last_name, first_name  asc;


-- unique last names containing a 'q' but not a 'qu'
select last_name
from employees
where last_name like "%q%"
and last_name not like "%QU%"
GROUP BY last_name asc;