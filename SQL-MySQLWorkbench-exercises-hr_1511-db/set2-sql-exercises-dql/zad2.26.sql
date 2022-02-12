select job_title, min_salary, min_salary*1.1 as podwyżka_10proc
from jobs
order by min_salary;