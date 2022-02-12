-- zad 5.12 dla King i Weiss razem 
select e.LAST_NAME, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE
from employees as e left join jobs as j
on e.job_id=j.JOB_ID
where e.JOB_ID in (
select e.JOB_ID
from employees as e  -- ważne: w podzapytaniu nadać również alias i użyć. 
where LAST_NAME = 'King' or LAST_NAME = 'Weiss')
order by e.JOB_ID; 
