SELECT FIRST_NAME, LAST_NAME
from employees
where LAST_NAME like '%i%' or LAST_NAME like '%a%' or LAST_NAME like '%o%';
