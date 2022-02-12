select job_id, min(salary) as pensja_min, max(salary) as pensja_max, avg(salary) as pensja_średnia, 
sum(salary) as suma_pensji, count(*) as liczba_pracowników
from employees
where job_id != 'ad_pres';


