-- Zad 1 własne: wyświetl imiona, nazwiska, pensje, id stanowiska i nazwę stanowiska 
-- osób, których pensja jest większa od średeniej pensji w firmie.  
select e.last_name, e.first_name, e.salary, e.JOB_ID, j.job_title
from employees as e left join jobs as j using (job_id)
where salary > (select avg(salary) from employees) 
order by SALARY;



