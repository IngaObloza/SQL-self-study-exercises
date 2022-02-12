select j.job_title, e.job_id, count(*) as liczba_osób
from employees as e left join jobs as j
on e.JOB_ID=j.JOB_ID
group by e.JOB_ID
order by liczba_osób;

