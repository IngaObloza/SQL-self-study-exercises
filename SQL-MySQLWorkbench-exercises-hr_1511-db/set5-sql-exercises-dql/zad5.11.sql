select *
from employees
where DEPARTMENT_ID = (
select DEPARTMENT_ID
from employees
where FIRST_NAME = 'Alexis' and LAST_NAME = 'Bull')
order by LAST_NAME;

  