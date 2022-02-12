select e.last_name, e.first_name, e.salary, e.job_id, j.job_title
from employees as e left join jobs as j using (job_id) 
where salary > (select avg(e.salary) from employees as e) and 
JOB_ID in (select e.JOB_ID from employees as e
where e.LAST_NAME = 'Abel') -- podzapytania - działają też bez aliasów. 
order by salary  
