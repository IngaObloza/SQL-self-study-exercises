select e.LAST_NAME, e.FIRST_NAME, e.JOB_ID, j.JOB_TITLE
from employees as e left join jobs as j
on e.job_id=j.JOB_ID
where e.JOB_ID = (
select e.JOB_ID
from employees as e -- ważne: w podzapytaniu nadać również alias i użyć. 
where e.LAST_NAME = 'Weiss') -- dla King: where e.Last_Name = 'King'
order by e.LAST_NAME; 

-- or e.LAST_NAME = 'King')
-- order by LAST_NAME;
