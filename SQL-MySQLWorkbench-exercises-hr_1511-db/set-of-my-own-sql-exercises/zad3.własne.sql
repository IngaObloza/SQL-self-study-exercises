-- zad 3 własne: 
-- wyświetl imiona, nazwiska, pensje, id stanowiska, nazwę stanowiska, nazwę oddziału, hire_date, nazwę kraju i nazwę miejscowości   
-- osób, których pensja jest większa od średeniej pensji w firmie. (tabele: employees, jobs, departments, locations, countries).
select e.last_name, e.first_name, e.hire_date, e.salary, e.JOB_ID, j.job_title, d.department_name,
 c.country_name, l.city
from employees as e left join jobs as j on e.JOB_ID=j.JOB_ID
left join departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
left join locations as l on d.LOCATION_ID=l.LOCATION_ID
left join countries as c on l.COUNTRY_ID=c.COUNTRY_ID
where salary > (select avg(salary) from employees as e ) 
order by e.SALARY

-- stanowiska gdzie minimalna pensja jest większa od średniej w firmie. 