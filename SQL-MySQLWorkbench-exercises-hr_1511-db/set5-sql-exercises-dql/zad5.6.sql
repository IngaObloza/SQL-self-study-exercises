select j.job_title, e.job_id, sum(salary) as suma_pensji, count(*) as liczba_osób
from employees as e left join jobs as j
on e.JOB_ID=j.JOB_ID
group by e.JOB_ID
-- dodatkowo dla ćwiczeń: 
-- 1] having min(salary) > 4200 -- > bez stanowisk, na których minimalna pensja jest mniejsza lub równa 4200. lub  
-- 2] having e.JOB_ID != 'AD_PRES' -- > bez stanowisk o job_id = AD_PRES' 
order by suma_pensji

