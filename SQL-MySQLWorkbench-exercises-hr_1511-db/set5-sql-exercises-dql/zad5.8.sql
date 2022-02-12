select e.JOB_ID, j.job_title, avg(salary) as średnia_pensja, count(*) as liczba_osób 
from employees as e left join jobs as j
on e.JOB_ID=j.JOB_ID
group by j.JOB_TITLE
having count(*) >= 3 
order by avg(salary);


