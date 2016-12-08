use employees;
-- List the first 10 distinct last name sorted in descending order.
select last_name
from employees
GROUP BY last_name DESC
limit 10;