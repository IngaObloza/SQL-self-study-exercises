SELECT first_name, last_name, hire_date
from employees
where HIRE_DATE between '2007-01-01' and '2007-12-31'
order by hire_date;
-- 2 rozwiązanie - fraza po from:
-- where HIRE_DATE like '2007%'
-- order by HIRE_DATE;