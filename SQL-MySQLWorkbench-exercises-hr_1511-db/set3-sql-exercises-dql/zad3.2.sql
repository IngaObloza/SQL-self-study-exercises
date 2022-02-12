select JOB_ID, AVG(salary), COUNT(*) AS liczba_osób_na_stanowisku 
from employees
where JOB_ID = 'IT_PROG';
