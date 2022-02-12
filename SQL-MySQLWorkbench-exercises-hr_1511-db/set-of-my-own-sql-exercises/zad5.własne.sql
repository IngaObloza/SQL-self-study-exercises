-- Zad 5 własne:   
-- Wyświetl stanowiska, na których minimalna pensja wynosi obecnie więcej niż średnia pensja w firmie.
-- wskaż minimalną, maksymalną i średnią pensję na tych stanowiskach, nazwy stanowisk i nazwy oddziałów 
-- oraz liczbę osób na danym stanowisku. 

SELECT min(e.salary) as pensja_min, max(e.salary) as pensja_max, avg(e.salary) as średnia_pensja,
j.job_title, d.department_name, count(*) as liczba_osób
from employees as e left join jobs as j on e.JOB_ID=j.JOB_ID
left join departments as d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by j.JOB_TITLE
having min(e.salary) > (select avg(e.salary) from employees as e) 
order by min(e.salary)