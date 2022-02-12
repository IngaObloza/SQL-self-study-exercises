SELECT first_name, last_name, hire_date, salary, JOB_ID
from employees
where job_id = 'ST_CLERK' and hire_date not like '2004%' and HIRE_DATE not like '2005%'; 