SELECT first_name, last_name, hire_date, SALARY
from employees
where salary not between 4000 and 12000
order by salary ASC;
